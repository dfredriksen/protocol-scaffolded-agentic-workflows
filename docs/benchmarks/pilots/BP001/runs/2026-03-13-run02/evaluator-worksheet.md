# BP001 Evaluator Worksheet Run 02

## Run metadata
- Run date: 2026-03-13
- Evaluator: Codex
- Agent/model: GPT-5 Codex
- Task packet: `BP001-T1` transfer variant

## Condition A: weak-prompt baseline
- Output path: `docs/benchmarks/pilots/BP001/runs/2026-03-13-run02/baseline-plan.md`
- Task completion score (`0-2`): 1
- Validation quality score (`0-2`): 0
- Protocol adherence score (`0-2`): 0
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 1
- Corrective iterations: 0
- Human interventions: 0
- Notes: The baseline plan lacked claim classification and decision-state discipline.

## Condition B: taught-protocol
- Output path: `docs/benchmarks/pilots/BP001/runs/2026-03-13-run02/taught-plan-final.md`
- Task completion score (`0-2`): 2
- Validation quality score (`0-2`): 2
- Protocol adherence score (`0-2`): 2
- Rework burden score (`0-2`): 2
- Transfer readiness score (`0-2`): 2
- Corrective iterations: 1
- Human interventions: 0
- Notes: The taught plan remained strong on an exploratory novelty-review task.

## Comparison summary
- Stronger condition: taught-protocol
- Main observed differences: explicit claim classification, validation gates, retained artifacts, and fallback
- Confounds: same-operator scoring and planning-structure-friendly task
- Did the taught protocol produce a meaningful improvement? Yes

## Closeout
- Recommendation:
  - strong pilot evidence
- Follow-on action:
  - obtain independent scoring on both BP001 runs
