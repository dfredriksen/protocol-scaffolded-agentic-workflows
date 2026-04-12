# BP001 Evaluator Worksheet Run 01

## Run metadata
- Run date: 2026-03-13
- Evaluator: Codex
- Agent/model: GPT-5 Codex
- Task packet: `BP001-T1`

## Condition A: weak-prompt baseline
- Output path: `docs/benchmarks/pilots/BP001/runs/2026-03-13-run01/baseline-plan.md`
- Task completion score (`0-2`): 1
- Validation quality score (`0-2`): 0
- Protocol adherence score (`0-2`): 0
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 2
- Corrective iterations: 0
- Human interventions: 0
- Notes: Plan was serviceable but structurally thin.

## Condition B: taught-protocol
- Output path: `docs/benchmarks/pilots/BP001/runs/2026-03-13-run01/taught-plan-final.md`
- Task completion score (`0-2`): 2
- Validation quality score (`0-2`): 2
- Protocol adherence score (`0-2`): 2
- Rework burden score (`0-2`): 2
- Transfer readiness score (`0-2`): 2
- Corrective iterations: 1
- Human interventions: 0
- Notes: Full planning skeleton and explicit review loop were present.

## Comparison summary
- Stronger condition: taught-protocol
- Main observed differences: explicit dependencies, checkpoints, fallback logic, and validator revision
- Confounds: same operator created and scored both artifacts
- Did the taught protocol produce a meaningful improvement? Yes, on planning completeness and auditability

## Closeout
- Recommendation:
  - strong pilot evidence
- Follow-on action:
  - run the transfer variant on a second planning task
