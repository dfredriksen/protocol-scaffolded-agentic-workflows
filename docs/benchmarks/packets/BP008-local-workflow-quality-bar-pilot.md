# BP008 - Local Workflow Quality-Bar Pilot

## Benchmark family
Local-model workflow quality-bar family

## Source teaching episode
- `docs/episodes/TE002-tax-browser-workflow.md`

## Purpose
Test whether local models benefit more from protocol-plus-review loops on concrete workflow artifact tasks than they do on repo-grounded planning tasks.

## Research question
Can a local executor reach `pass-core` or `pass-stretch` more reliably on a BP004-style workflow task than on the BP007B planning task when the reviewer enforces a fixed workflow quality bar?

## Task statement
Execute a reversible local workflow that requires:
- reading a structured source packet
- creating draft-safe local artifacts
- creating required blocker placeholders when fields are missing
- logging stop conditions
- producing a handoff index for reviewer continuation

## Conditions
### A. Single-model taught
Give the executor the workflow protocol and ask it to complete the task in one pass.

### B. Protocol-plus-quality-bar loop
Give the executor the workflow protocol, then run the local workflow quality-bar loop until `pass-core`, `pass-stretch`, `fail-cap`, or `blocked`.

## Required outputs
- prompt set
- draft artifact manifest
- workflow trace
- stop-condition log
- handoff index
- reviewer feedback records
- final status record

## Validation method
- Score both conditions with `docs/benchmarks/scoring-rubric-v1.md`.
- Also track:
  - `pass-core` versus `pass-stretch`
  - number of review loops used
  - placeholder-file correctness
  - whether the handoff packet is continuation-safe

## Pilot execution order
1. strongest current local executor with hosted reviewer
2. second local executor with hosted reviewer
3. strongest current all-local fallback pair

## Completion bar
- at least one local executor is run in both conditions
- retained artifacts allow the reviewer to audit file creation and blocker handling
- the branch clearly answers whether workflow tasks are a better local quality-bar surface than planning tasks
