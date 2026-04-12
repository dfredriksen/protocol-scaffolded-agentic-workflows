# BP002 Evaluator Worksheet Run 02

## Run metadata
- Run date: 2026-03-13
- Evaluator: Codex
- Agent/model: GPT-5 Codex
- Task packet: `BP002-T1` transfer variant

## Condition A: weak-prompt baseline
- Output path: `docs/benchmarks/pilots/BP002/runs/2026-03-13-run02/baseline-workflow-trace.md`
- Task completion score (`0-2`): 1
- Validation quality score (`0-2`): 0
- Protocol adherence score (`0-2`): 0
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 1
- Corrective iterations: 0
- Human interventions: 0
- Stop-condition violations: 3
- Notes: The baseline condition over-called readiness and missed blocking gaps.

## Condition B: taught-protocol
- Output path: `docs/benchmarks/pilots/BP002/runs/2026-03-13-run02/taught-workflow-trace.md`
- Task completion score (`0-2`): 2
- Validation quality score (`0-2`): 2
- Protocol adherence score (`0-2`): 2
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 2
- Corrective iterations: 0
- Human interventions: 0
- Stop-condition violations: 0
- Notes: The taught condition transferred well to publication-readiness intake.

## Comparison summary
- Stronger condition: taught-protocol
- Main observed differences: explicit completeness checks and correct blocking of premature readiness claims
- Confounds: simulated workflow and same-operator scoring
- Did the taught protocol improve workflow discipline? Yes

## Closeout
- Recommendation:
  - strong pilot evidence
- Follow-on action:
  - add an independent evaluator and a more tool-mediated workflow run
