# BP002 Task Packet V1

## Packet ID
BP002-T1

## Benchmark packet
- `docs/benchmarks/packets/BP002-structured-workflow-pilot.md`

## Objective
Evaluate whether a taught workflow protocol improves validation discipline and stop-condition handling on a safe, simulated structured workflow task.

## Concrete task
Execute a simulated research-intake workflow for a new teaching episode candidate. The agent must review a provided source-of-truth packet, complete an intake checklist, stop when evidence is missing, and produce an artifact-retention list.

## Safe workflow framing
This pilot avoids live tax systems and sensitive personal data. It uses a research-intake simulation that preserves the same structural features:
- source-of-truth packet
- ordered entry or review steps
- validation checkpoints
- explicit stop conditions
- retained artifacts

## Allowed tools
- local markdown files
- browser simulation or checklist execution
- note-taking and artifact logging

## Condition prompts
### A. Weak-prompt baseline
Complete the intake workflow using the provided source materials and produce the required outputs.

### B. Taught-protocol condition
Complete the intake workflow using the provided workflow protocol. Follow all validation checkpoints, stop conditions, and artifact-retention requirements.

## Required retained outputs
- `baseline-prompt.txt`
- `baseline-workflow-trace.md`
- `baseline-validation-notes.md`
- `taught-prompt.txt`
- `taught-workflow-trace.md`
- `taught-validation-notes.md`
- `stop-condition-log.md`
- `artifact-retention-list.md`
- `score-summary.md`

## Transfer variant
Repeat the same comparison on a second structured workflow:
- benchmark candidate triage, or
- publication-asset readiness intake

## Evaluation focus
- adherence to ordered workflow steps
- accuracy of validation against source-of-truth
- correct handling of stop conditions
- completeness of retained artifacts

## Pilot completion bar
- Both conditions are run and retained.
- The evaluator worksheet is completed.
- The workflow remains within the safe simulated environment.
