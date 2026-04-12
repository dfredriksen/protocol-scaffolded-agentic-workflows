$ErrorActionPreference = 'Stop'

$envPath = 'C:\Users\Dan\Desktop\Projects\Model-Inventory\.env'
$line = Get-Content $envPath | Where-Object { $_ -match '^OPENAI_API_KEY=' } | Select-Object -First 1
if (-not $line) {
  throw 'OPENAI_API_KEY not found in Model-Inventory .env'
}
$key = $line.Substring('OPENAI_API_KEY='.Length)

$executorModel = 'qwen2.5-coder:3b'
$protocol = Get-Content 'docs/process/planning-protocol.md' -Raw
$inventory = (& rg --files docs stories epics logs) -join "`n"

$task = @"
Using the planning protocol below, create a practical plan for the next implementation phase of the Quantyra-Teaching repository after the BP006 architecture freeze. Keep it grounded in benchmark packets, stories, run sheets, decision notes, and checkpoint updates already used in this repo.

Planning protocol:
$protocol
"@

$initialTask = $task -replace 'create a practical plan', 'create the initial draft'
$reviseTask = $task -replace 'create a practical plan', 'revise the plan'

$singleValidator = @"
Review the draft plan below using the planning protocol. Return a flat numbered list of the most important defects and concrete revisions needed. Focus on repo grounding, dependencies, validation checkpoints, fallback paths, genuine teaching criteria, comparison conditions, and retained outputs.
"@

$corePrompt = @"
Evaluate the executor artifact against the CORE BAR only. Return only one of: PASS-CORE, FAIL, or BLOCKED. If FAIL, list only the blocking defects.

Core bar:
1. states a concrete repository-phase objective
2. names constraints that match this repo's markdown workflow
3. identifies required artifacts in existing repo areas
4. identifies dependencies and at least one concrete validation checkpoint
5. includes a real fallback path and retained-output expectation
6. avoids invented non-repo systems, products, or workflows
"@

$verifierStretchPrompt = @"
You are enforcing a verifier-backed stretch review.

Return only one of: PASS-STRETCH or FAIL.
If FAIL, list only the remaining stretch-bar or inventory-verification defects.

Verifier-backed rules:
1. A stretch pass requires the content-level stretch bar.
2. Every named file, folder, script, packet, story, note, or workflow surface must either:
   - exist in the repo inventory below, or
   - be clearly proposed as a new artifact inside a named existing repo area.
3. Any invented script, benchmark family, or workflow surface presented as already existing must cause FAIL.

Stretch bar:
1. states what would count as genuine teaching rather than prompt overfitting
2. identifies at least one explicit comparison condition
3. names at least three concrete existing repo artifacts or paths that belong to the next phase
4. specifies retained outputs with stronger rerunability, including where they belong in the current repo structure
5. provides clearer dependency ordering and checkpoint logic tied to those real repo artifacts
6. invents no new repo folders, scripts, benchmark families, or workflow surfaces
7. reaches evaluator quality consistent with a 10/10 planning result

Repo inventory:
$inventory
"@

function Invoke-OllamaPrompt($model, $prompt) {
  $body = @{
    model = $model
    prompt = $prompt
    stream = $false
    keep_alive = '0s'
    options = @{
      num_ctx = 2048
      num_predict = 260
    }
  } | ConvertTo-Json -Depth 5
  $resp = Invoke-RestMethod -Method Post -Uri 'http://127.0.0.1:11434/api/generate' -ContentType 'application/json' -Body $body
  return $resp.response
}

function Invoke-OpenAI($system, $user) {
  $body = @{
    model = 'gpt-4.1'
    messages = @(
      @{ role = 'system'; content = $system },
      @{ role = 'user'; content = $user }
    )
  } | ConvertTo-Json -Depth 6
  $headers = @{
    Authorization = "Bearer $key"
    'Content-Type' = 'application/json'
  }
  $resp = Invoke-RestMethod -Method Post -Uri 'https://api.openai.com/v1/chat/completions' -Headers $headers -Body $body
  return $resp.choices[0].message.content
}

$singleDraft = Invoke-OllamaPrompt $executorModel $task
$singleFeedback = Invoke-OpenAI 'You are a rigorous benchmark validator.' ($singleValidator + "`n`nDraft:`n" + $singleDraft)
$singleFinal = Invoke-OllamaPrompt $executorModel ($task + "`n`nValidator feedback:`n" + $singleFeedback + "`n`nRevise the plan to address the validator feedback while staying grounded in this repo.")

$loopDraft1 = Invoke-OllamaPrompt $executorModel $initialTask
$loopReview1 = Invoke-OpenAI 'You are a strict reviewer enforcing a fixed core quality bar.' ($corePrompt + "`n`nExecutor artifact:`n" + $loopDraft1)

$loopRevision1 = $null
$loopReview2 = $null
$stretchReview1 = $null
$stretchRevision = $null
$stretchReview2 = $null
$finalStatus = $null

if ($loopReview1 -match '^PASS-CORE') {
  $coreArtifact = $loopDraft1
} else {
  $loopRevision1 = Invoke-OllamaPrompt $executorModel ($reviseTask + "`n`nCore-bar review:`n" + $loopReview1 + "`n`nReturn a revised plan that fixes the blocking defects while staying grounded in the repo.")
  $loopReview2 = Invoke-OpenAI 'You are a strict reviewer enforcing a fixed core quality bar.' ($corePrompt + "`n`nExecutor artifact:`n" + $loopRevision1)
  if ($loopReview2 -match '^PASS-CORE') {
    $coreArtifact = $loopRevision1
  } else {
    $coreArtifact = $null
    $finalStatus = 'fail-cap'
  }
}

if ($null -ne $coreArtifact) {
  $stretchReview1 = Invoke-OpenAI 'You are a strict verifier-backed reviewer for repo-grounded benchmark artifacts.' ($verifierStretchPrompt + "`n`nExecutor artifact:`n" + $coreArtifact)
  if ($stretchReview1 -match '^PASS-STRETCH') {
    $finalStatus = 'pass-stretch'
  } else {
    $stretchRevision = Invoke-OllamaPrompt $executorModel ("Revise the plan below so it passes the verifier-backed stretch bar. Use only real existing Quantyra-Teaching repo files or paths, or clearly propose new artifacts inside named existing repo areas. Do not invent scripts, folders, benchmark families, or workflow surfaces that already exist.`n`nVerifier-backed stretch review:`n" + $stretchReview1 + "`n`nCurrent artifact:`n" + $coreArtifact)
    $stretchReview2 = Invoke-OpenAI 'You are a strict verifier-backed reviewer for repo-grounded benchmark artifacts.' ($verifierStretchPrompt + "`n`nExecutor artifact:`n" + $stretchRevision)
    if ($stretchReview2 -match '^PASS-STRETCH') {
      $finalStatus = 'pass-stretch'
    } else {
      $finalStatus = 'pass-core'
    }
  }
}

@(
  @{ name = 'SINGLE_TAUGHT_PROMPT'; value = $task }
  @{ name = 'SINGLE_TAUGHT_DRAFT'; value = $singleDraft }
  @{ name = 'SINGLE_TAUGHT_VALIDATOR_FEEDBACK'; value = $singleFeedback }
  @{ name = 'SINGLE_TAUGHT_FINAL'; value = $singleFinal }
  @{ name = 'LOOP_EXECUTOR_PROMPT'; value = $initialTask }
  @{ name = 'LOOP_CORE_BAR_PROMPT'; value = $corePrompt }
  @{ name = 'VERIFIER_STRETCH_PROMPT'; value = $verifierStretchPrompt }
  @{ name = 'LOOP_DRAFT_01'; value = $loopDraft1 }
  @{ name = 'LOOP_REVIEW_01'; value = $loopReview1 }
  @{ name = 'LOOP_REVISION_01'; value = $loopRevision1 }
  @{ name = 'LOOP_REVIEW_02'; value = $loopReview2 }
  @{ name = 'VERIFIER_STRETCH_REVIEW_01'; value = $stretchReview1 }
  @{ name = 'STRETCH_REVISION'; value = $stretchRevision }
  @{ name = 'VERIFIER_STRETCH_REVIEW_02'; value = $stretchReview2 }
  @{ name = 'FINAL_STATUS'; value = $finalStatus }
) | ForEach-Object {
  if ($null -ne $_.value -and $_.value -ne '') {
    Write-Output ("---" + $_.name + "---")
    Write-Output $_.value
  }
}
