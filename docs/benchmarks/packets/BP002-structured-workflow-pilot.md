# BP002 - Structured Workflow Pilot Packet

## Benchmark family
Structured browser/workflow family

## Source teaching episode
- `docs/episodes/TE002-tax-browser-workflow.md`

## Purpose
Test whether a taught stepwise workflow protocol improves reliability and stop-condition compliance on browser-like structured tasks.

## Task statement
Execute a structured, tool-mediated workflow with required validations, explicit stop conditions, and artifact retention.

## Candidate task archetypes
- browser-based form entry simulation
- portal submission rehearsal
- compliance or operations checklist execution

## Allowed tools
- browser or browser simulation
- structured checklists
- validation sheets
- artifact capture tools

## Conditions
### A. Weak-prompt baseline
Prompt the agent to complete the workflow with only the task objective and source materials.

### B. Taught-protocol condition
Provide the explicit workflow protocol and require adherence to validation and stop-condition steps.

## Required outputs
- step log or execution trace
- validation notes
- stop-condition decisions
- retained artifacts list

## Validation method
- Score both conditions with `docs/benchmarks/scoring-rubric-v1.md`.
- Specifically track:
  - variance from source-of-truth data
  - stop-condition compliance
  - irreversible-action discipline
  - artifact retention completeness

## Transfer variant
Apply the same protocol pattern to a non-tax but structurally similar workflow, such as another portal submission or multi-step operational intake process.

## Retained outputs
- prompts used for each condition
- workflow trace
- validation artifacts
- final scores
- evaluator notes on UI fragility and hidden assistance

## Known confounds
- UI volatility or simulation mismatch
- source package completeness
- benchmark may favor checklist-friendly tasks

## Pilot completion bar
- At least one workflow task is run in both conditions.
- Stop-condition handling is explicitly documented.
- Results are summarized with limitations and transfer notes.
