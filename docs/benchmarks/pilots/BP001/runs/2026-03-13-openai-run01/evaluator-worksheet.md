# OpenAI BP001 Evaluator Worksheet Run 01

## Run metadata
- Run date: 2026-03-13
- Evaluator: Codex
- Agent/model: OpenAI `gpt-4.1`
- Task packet: `BP001-T1`

## Condition A: weak-prompt baseline
- Output path: `docs/benchmarks/pilots/BP001/runs/2026-03-13-openai-run01/baseline-plan.md`
- Task completion score (`0-2`): 1
- Validation quality score (`0-2`): 0
- Protocol adherence score (`0-2`): 0
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 1
- Corrective iterations: 0
- Human interventions: 0
- Notes: Generic plan with little repository specificity and no formal protocol structure.

## Condition B: taught-protocol
- Output path: `docs/benchmarks/pilots/BP001/runs/2026-03-13-openai-run01/taught-plan-final.md`
- Task completion score (`0-2`): 2
- Validation quality score (`0-2`): 2
- Protocol adherence score (`0-2`): 2
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 2
- Corrective iterations: 1
- Human interventions: 0
- Notes: Strong protocol structure with clear validation logic after light narrowing revision.

## Comparison summary
- Stronger condition: taught-protocol
- Main observed differences: formal planning skeleton, risks, fallback, and explicit artifact retention
- Confounds: same-operator scoring and protocol-embedded prompt
- Did the taught protocol produce a meaningful improvement? Yes

## Closeout
- Recommendation:
  - strong pilot evidence
- Follow-on action:
  - run OpenAI BP002
