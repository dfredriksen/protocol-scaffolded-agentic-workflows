# OpenAI BP002 Evaluator Worksheet Run 01

## Run metadata
- Run date: 2026-03-13
- Evaluator: Codex
- Agent/model: OpenAI `gpt-4.1`
- Task packet: `BP002-T1`

## Condition A: weak-prompt baseline
- Output path: `docs/benchmarks/pilots/BP002/runs/2026-03-13-openai-run01/baseline-workflow-trace.md`
- Task completion score (`0-2`): 1
- Validation quality score (`0-2`): 1
- Protocol adherence score (`0-2`): 0
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 2
- Corrective iterations: 0
- Human interventions: 0
- Stop-condition violations: 1
- Notes: Baseline spotted some gaps but did not stop cleanly.

## Condition B: taught-protocol
- Output path: `docs/benchmarks/pilots/BP002/runs/2026-03-13-openai-run01/taught-workflow-trace.md`
- Task completion score (`0-2`): 2
- Validation quality score (`0-2`): 2
- Protocol adherence score (`0-2`): 2
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 2
- Corrective iterations: 0
- Human interventions: 0
- Stop-condition violations: 0
- Notes: Taught condition completed the workflow in a protocol-compliant way and stopped correctly.

## Comparison summary
- Stronger condition: taught-protocol
- Main observed differences: explicit validation and stop-condition discipline
- Confounds: same-operator scoring and protocol-embedded prompt
- Did the taught protocol improve workflow discipline? Yes

## Closeout
- Recommendation:
  - strong pilot evidence
- Follow-on action:
  - include OpenAI BP002 in second-pass review
