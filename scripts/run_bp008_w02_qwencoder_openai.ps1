$ErrorActionPreference = 'Stop'

$envPath = 'C:\Users\Dan\Desktop\Projects\Model-Inventory\.env'
$line = Get-Content $envPath | Where-Object { $_ -match '^OPENAI_API_KEY=' } | Select-Object -First 1
if (-not $line) {
  throw 'OPENAI_API_KEY not found in Model-Inventory .env'
}
$key = $line.Substring('OPENAI_API_KEY='.Length)

$executorModel = 'qwen2.5-coder:3b'
$protocol = Get-Content 'docs/process/local-workflow-quality-bar-protocol.md' -Raw
$taskPacket = Get-Content 'docs/benchmarks/pilots/BP008/task-packet-v1.md' -Raw

$task = @"
Use the local workflow quality-bar protocol and the BP008 task packet below to produce a draft-safe internal release-readiness evidence bundle for this repository.

You must create a markdown artifact set conceptually covering:
- `draft-release-summary.md`
- `reviewer-status.md`
- `artifact-manifest.md`
- `stop-condition-log.md`
- `handoff-index.md`

Return the artifact contents in markdown sections labeled with the target filenames.

Workflow protocol:
$protocol

Task packet:
$taskPacket
"@

$initialTask = $task + "`n`nCreate the initial draft artifact set."
$reviseTask = $task + "`n`nRevise the artifact set to address reviewer defects while keeping all outputs draft-safe."

$singleValidator = @"
Review the draft artifact set below. Return a flat numbered list of the most important defects. Focus on required artifact presence, placeholder correctness, stop-condition handling, handoff safety, and whether approvals were invented.
"@

$corePrompt = @"
Evaluate the executor artifact set against the CORE BAR only. Return only one of: PASS-CORE, FAIL, or BLOCKED. If FAIL, list only the blocking defects.

Core bar:
1. all explicitly required artifacts are present
2. missing approval or approver fields are not invented
3. blocker placeholder files are present where required
4. a stop-condition log exists
5. a handoff index exists and labels blocked versus draft-only status
6. outputs remain draft-safe rather than final or authorized
"@

$stretchPrompt = @"
Evaluate the executor artifact set against the STRETCH BAR. Return only one of: PASS-STRETCH or FAIL. If FAIL, list only the remaining stretch defects.

Stretch bar:
1. the artifact set is internally consistent
2. placeholder handling is complete and correctly labeled
3. the handoff index is continuation-safe for a reviewer
4. the artifact manifest is auditable
5. draft artifacts do not imply missing approvals
6. overall quality is consistent with a 10/10 workflow result
"@

function Invoke-OllamaPrompt($model, $prompt) {
  $body = @{
    model = $model
    prompt = $prompt
    stream = $false
    keep_alive = '0s'
    options = @{
      num_ctx = 2048
      num_predict = 320
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
$singleFeedback = Invoke-OpenAI 'You are a rigorous workflow benchmark validator.' ($singleValidator + "`n`nDraft artifact set:`n" + $singleDraft)
$singleFinal = Invoke-OllamaPrompt $executorModel ($task + "`n`nValidator feedback:`n" + $singleFeedback + "`n`nRevise the artifact set while keeping it draft-safe and reviewer-ready.")

$loopDraft1 = Invoke-OllamaPrompt $executorModel $initialTask
$loopReview1 = Invoke-OpenAI 'You are a strict reviewer enforcing a fixed workflow core quality bar.' ($corePrompt + "`n`nExecutor artifact set:`n" + $loopDraft1)

$loopRevision1 = $null
$loopReview2 = $null
$stretchReview1 = $null
$stretchRevision = $null
$stretchReview2 = $null
$finalStatus = $null

if ($loopReview1 -match '^PASS-CORE') {
  $coreArtifact = $loopDraft1
} else {
  $loopRevision1 = Invoke-OllamaPrompt $executorModel ($reviseTask + "`n`nCore-bar review:`n" + $loopReview1)
  $loopReview2 = Invoke-OpenAI 'You are a strict reviewer enforcing a fixed workflow core quality bar.' ($corePrompt + "`n`nExecutor artifact set:`n" + $loopRevision1)
  if ($loopReview2 -match '^PASS-CORE') {
    $coreArtifact = $loopRevision1
  } else {
    $coreArtifact = $null
    $finalStatus = 'fail-cap'
  }
}

if ($null -ne $coreArtifact) {
  $stretchReview1 = Invoke-OpenAI 'You are a strict workflow stretch reviewer.' ($stretchPrompt + "`n`nExecutor artifact set:`n" + $coreArtifact)
  if ($stretchReview1 -match '^PASS-STRETCH') {
    $finalStatus = 'pass-stretch'
  } else {
    $stretchRevision = Invoke-OllamaPrompt $executorModel ($task + "`n`nStretch review:`n" + $stretchReview1 + "`n`nRevise the artifact set to address the remaining defects without inventing approvals.")
    $stretchReview2 = Invoke-OpenAI 'You are a strict workflow stretch reviewer.' ($stretchPrompt + "`n`nExecutor artifact set:`n" + $stretchRevision)
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
  @{ name = 'LOOP_STRETCH_BAR_PROMPT'; value = $stretchPrompt }
  @{ name = 'LOOP_DRAFT_01'; value = $loopDraft1 }
  @{ name = 'LOOP_REVIEW_01'; value = $loopReview1 }
  @{ name = 'LOOP_REVISION_01'; value = $loopRevision1 }
  @{ name = 'LOOP_REVIEW_02'; value = $loopReview2 }
  @{ name = 'STRETCH_REVIEW_01'; value = $stretchReview1 }
  @{ name = 'STRETCH_REVISION'; value = $stretchRevision }
  @{ name = 'STRETCH_REVIEW_02'; value = $stretchReview2 }
  @{ name = 'FINAL_STATUS'; value = $finalStatus }
) | ForEach-Object {
  if ($null -ne $_.value -and $_.value -ne '') {
    Write-Output ("---" + $_.name + "---")
    Write-Output $_.value
  }
}
