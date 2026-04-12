$ErrorActionPreference = 'Stop'

$envPath = 'C:\Users\Dan\Desktop\Projects\Model-Inventory\.env'
$line = Get-Content $envPath | Where-Object { $_ -match '^OPENAI_API_KEY=' } | Select-Object -First 1
if (-not $line) {
  throw 'OPENAI_API_KEY not found in Model-Inventory .env'
}
$key = $line.Substring('OPENAI_API_KEY='.Length)

$inventory = (& rg --files docs stories epics logs) -join "`n"
$artifact = Get-Content 'docs/benchmarks/pilots/BP007B/runs/2026-03-14-llama32-openai-run03/stretch-revision.md' -Raw

$prompt = @"
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

Executor artifact:
$artifact
"@

$body = @{
  model = 'gpt-4.1'
  messages = @(
    @{ role = 'system'; content = 'You are a strict verifier-backed reviewer for repo-grounded benchmark artifacts.' },
    @{ role = 'user'; content = $prompt }
  )
} | ConvertTo-Json -Depth 6

$headers = @{
  Authorization = "Bearer $key"
  'Content-Type' = 'application/json'
}

$resp = Invoke-RestMethod -Method Post -Uri 'https://api.openai.com/v1/chat/completions' -Headers $headers -Body $body
$resp.choices[0].message.content
