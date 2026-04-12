# BP002 Evaluator Worksheet Run 01

## Run metadata
- Run date: 2026-03-13
- Evaluator: Codex
- Agent/model: GPT-5 Codex
- Task packet: `BP002-T1`

## Condition A: weak-prompt baseline
- Output path: `docs/benchmarks/pilots/BP002/runs/2026-03-13-run01/baseline-workflow-trace.md`
- Task completion score (`0-2`): 1
- Validation quality score (`0-2`): 0
- Protocol adherence score (`0-2`): 0
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 1
- Corrective iterations: 0
- Human interventions: 0
- Stop-condition violations: 3
- Notes: The baseline condition completed an intake superficially but ignored the packet's intended control structure.

## Condition B: taught-protocol
- Output path: `docs/benchmarks/pilots/BP002/runs/2026-03-13-run01/taught-workflow-trace.md`
- Task completion score (`0-2`): 2
- Validation quality score (`0-2`): 2
- Protocol adherence score (`0-2`): 2
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 2
- Corrective iterations: 0
- Human interventions: 0
- Stop-condition violations: 0
- Notes: The taught condition succeeded by stopping correctly rather than forcing completion.

## Comparison summary
- Stronger condition: taught-protocol
- Main observed differences: explicit validation against required fields and correct stop-condition execution
- Confounds: simulated workflow and same-operator scoring
- Did the taught protocol improve workflow discipline? Yes

## Closeout
- Recommendation:
  - strong pilot evidence
- Follow-on action:
  - run the transfer workflow on publication-asset readiness intake
