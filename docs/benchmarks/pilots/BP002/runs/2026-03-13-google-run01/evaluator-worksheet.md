# Google BP002 Evaluator Worksheet Run 01

## Run metadata
- Run date: 2026-03-13
- Evaluator: Codex
- Agent/model: Google `gemini-2.5-flash`
- Task packet: `BP002-T1`

## Condition A: weak-prompt baseline
- Output path: `docs/benchmarks/pilots/BP002/runs/2026-03-13-google-run01/baseline-workflow-trace.md`
- Task completion score (`0-2`): 2
- Validation quality score (`0-2`): 2
- Protocol adherence score (`0-2`): 1
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 2
- Corrective iterations: 0
- Human interventions: 0
- Stop-condition violations: 0
- Notes: Strong baseline with correct halt and good validation behavior.

## Condition B: taught-protocol
- Output path: `docs/benchmarks/pilots/BP002/runs/2026-03-13-google-run01/taught-workflow-trace.md`
- Task completion score (`0-2`): 2
- Validation quality score (`0-2`): 2
- Protocol adherence score (`0-2`): 2
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 2
- Corrective iterations: 0
- Human interventions: 0
- Stop-condition violations: 0
- Notes: Slightly more explicit than the baseline, but not radically different.

## Comparison summary
- Stronger condition: taught-protocol
- Main observed differences: more explicit workflow framing and retention logic
- Confounds: same-operator scoring and already-strong baseline
- Did the taught protocol improve workflow discipline? Slightly

## Closeout
- Recommendation:
  - mixed evidence
- Follow-on action:
  - review whether Google needs a harder workflow task to expose larger uplift
