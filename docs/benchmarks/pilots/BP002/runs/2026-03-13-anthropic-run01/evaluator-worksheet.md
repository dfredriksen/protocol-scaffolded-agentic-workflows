# Anthropic BP002 Evaluator Worksheet Run 01

## Run metadata
- Run date: 2026-03-13
- Evaluator: Codex
- Agent/model: Anthropic `claude-sonnet-4-6`
- Task packet: `BP002-T1`

## Condition A: weak-prompt baseline
- Output path: `docs/benchmarks/pilots/BP002/runs/2026-03-13-anthropic-run01/baseline-workflow-trace.md`
- Task completion score (`0-2`): 2
- Validation quality score (`0-2`): 2
- Protocol adherence score (`0-2`): 1
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 2
- Corrective iterations: 0
- Human interventions: 0
- Stop-condition violations: 0
- Notes: Strong baseline, with explicit deficiency tracking and correct halt.

## Condition B: taught-protocol
- Output path: `docs/benchmarks/pilots/BP002/runs/2026-03-13-anthropic-run01/taught-workflow-trace.md`
- Task completion score (`0-2`): 2
- Validation quality score (`0-2`): 2
- Protocol adherence score (`0-2`): 2
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 2
- Corrective iterations: 0
- Human interventions: 0
- Stop-condition violations: 0
- Notes: Very similar behavior to the baseline with slightly cleaner protocol framing.

## Comparison summary
- Stronger condition: taught-protocol
- Main observed differences: better packaging and explicit protocol framing
- Confounds: same-operator scoring, already-strong baseline, concise rerun for taught capture
- Did the taught protocol improve workflow discipline? Slightly

## Closeout
- Recommendation:
  - mixed evidence
- Follow-on action:
  - compare BP001 and BP002 behavior for Anthropic in review pass 2
