$ErrorActionPreference = 'Stop'

$envPath = 'C:\Users\Dan\Desktop\Projects\Model-Inventory\.env'
$line = Get-Content $envPath | Where-Object { $_ -match '^OPENAI_API_KEY=' } | Select-Object -First 1
if (-not $line) {
  throw 'OPENAI_API_KEY not found in Model-Inventory .env'
}
$key = $line.Substring('OPENAI_API_KEY='.Length)

$stretchPrompt = @"
Evaluate the artifact against the STRETCH BAR only. Return only one of: PASS-STRETCH or FAIL. If FAIL, list only the remaining stretch-bar defects.

Stretch bar:
1. states what would count as genuine teaching rather than prompt overfitting
2. identifies at least one explicit comparison condition
3. names at least three concrete existing repo artifacts or paths that belong to the next phase
4. specifies retained outputs with stronger rerunability, including where they belong in the current repo structure
5. provides clearer dependency ordering and checkpoint logic tied to those real repo artifacts
6. invents no new repo folders, scripts, benchmark families, or workflow surfaces
7. reaches evaluator quality consistent with a 10/10 planning result
"@

function Invoke-OllamaPrompt($model, $prompt) {
  $body = @{
    model = $model
    prompt = $prompt
    stream = $false
  } | ConvertTo-Json -Depth 4
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

$artifact = Get-Content 'docs/benchmarks/pilots/BP007B/runs/2026-03-14-llama32-openai-run02/loop-revision-01.md' -Raw
$review1 = Invoke-OpenAI 'You are a strict reviewer enforcing a tightened stretch quality bar.' ($stretchPrompt + "`n`nExecutor artifact:`n" + $artifact)
$revision = Invoke-OllamaPrompt 'llama3.2:3b' ("Revise the plan below so it passes the tightened stretch bar. You must name real existing Quantyra-Teaching repo files or paths, define a concrete comparison condition, specify retained outputs in current repo locations, and avoid inventing folders, scripts, or workflow surfaces.`n`nTightened stretch-bar review:`n" + $review1 + "`n`nCurrent artifact:`n" + $artifact)
$review2 = Invoke-OpenAI 'You are a strict reviewer enforcing a tightened stretch quality bar.' ($stretchPrompt + "`n`nExecutor artifact:`n" + $revision)

@(
  @{ name = 'TIGHTENED_STRETCH_REVIEW_01'; value = $review1 }
  @{ name = 'STRETCH_REVISION'; value = $revision }
  @{ name = 'TIGHTENED_STRETCH_REVIEW_02'; value = $review2 }
) | ForEach-Object {
  Write-Output ("---" + $_.name + "---")
  Write-Output $_.value
}
