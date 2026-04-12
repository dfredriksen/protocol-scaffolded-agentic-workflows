# Google BP001 Evaluator Worksheet Run 01

## Run metadata
- Run date: 2026-03-13
- Evaluator: Codex
- Agent/model: Google `gemini-2.5-flash`
- Task packet: `BP001-T1`

## Condition A: weak-prompt baseline
- Output path: `docs/benchmarks/pilots/BP001/runs/2026-03-13-google-run01/baseline-plan.md`
- Task completion score (`0-2`): 1
- Validation quality score (`0-2`): 0
- Protocol adherence score (`0-2`): 0
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 1
- Corrective iterations: 0
- Human interventions: 0
- Notes: Broad template with little repository specificity.

## Condition B: taught-protocol
- Output path: `docs/benchmarks/pilots/BP001/runs/2026-03-13-google-run01/taught-plan-final.md`
- Task completion score (`0-2`): 1
- Validation quality score (`0-2`): 2
- Protocol adherence score (`0-2`): 2
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 1
- Corrective iterations: 1
- Human interventions: 0
- Notes: Clear structural uplift, but the model drifted from the task and had to be narrowed conceptually.

## Comparison summary
- Stronger condition: taught-protocol
- Main observed differences: stronger structure and validation language, weaker task fidelity than OpenAI
- Confounds: same-operator scoring and protocol-embedded prompt
- Did the taught protocol produce a meaningful improvement? Yes, but with material drift risk

## Closeout
- Recommendation:
  - mixed evidence
- Follow-on action:
  - run Google BP002 and compare task fidelity
