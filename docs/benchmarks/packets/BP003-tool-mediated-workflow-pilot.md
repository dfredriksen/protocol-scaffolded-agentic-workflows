# BP003 - Tool-Mediated Workflow Pilot Packet

## Benchmark family
Structured browser/workflow family

## Source teaching episode
- `docs/episodes/TE002-tax-browser-workflow.md`

## Purpose
Test whether a taught workflow protocol improves reliability on a harder, tool-mediated workflow where the agent must preserve state across multiple artifacts, stop on missing approvals, and hand off a reversible execution package.

## Task statement
Execute a simulated tool-mediated workflow that requires:
- intake of a structured request packet
- validation against source-of-truth data
- staged artifact creation across multiple tools or files
- explicit stop conditions before any irreversible action
- clean handoff artifacts for a human or downstream agent

## Candidate task archetypes
- publication-submission package preparation
- release-readiness evidence bundle assembly
- multi-system compliance intake with approval gates

## Allowed tools
- local markdown files
- local filesystem artifact creation
- browser simulation or form-state checklisting
- terminal commands for file inspection

## Conditions
### A. Weak-prompt baseline
Prompt the agent to complete the workflow using only the task objective and source packet.

### B. Taught-protocol condition
Provide the explicit workflow protocol and require ordered validation, stop-condition handling, and retained handoff artifacts.

## Required outputs
- workflow trace
- validation notes
- stop-condition log
- handoff packet index
- artifact-retention list

## Validation method
- Score both conditions with `docs/benchmarks/scoring-rubric-v1.md`.
- Specifically track:
  - state retention across steps
  - correctness of blocking on missing approvals
  - separation between draft artifacts and authorized artifacts
  - handoff quality for downstream continuation

## Transfer variant
Repeat the comparison on a second workflow that uses a different domain packet but the same gate structure, such as internal-release intake instead of publication-intake packaging.

## Retained outputs
- prompts used for each condition
- workflow trace
- validation artifacts
- stop-condition log
- handoff packet index
- evaluator notes on approval-gate handling

## Known confounds
- task difficulty may favor meticulous models even without protocol teaching
- simulated tools still understate live browser fragility
- handoff packaging quality may be easier to score than actual execution correctness

## Pilot completion bar
- At least one BP003 task is run in both conditions.
- Stop-condition handling and draft-versus-authorized separation are explicitly documented.
- A handoff packet exists that another operator could continue safely.
