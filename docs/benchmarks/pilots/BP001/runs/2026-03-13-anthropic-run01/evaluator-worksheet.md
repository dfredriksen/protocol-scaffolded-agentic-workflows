# Anthropic BP001 Evaluator Worksheet Run 01

## Run metadata
- Run date: 2026-03-13
- Evaluator: Codex
- Agent/model: Anthropic `claude-sonnet-4-6`
- Task packet: `BP001-T1`

## Condition A: weak-prompt baseline
- Output path: `docs/benchmarks/pilots/BP001/runs/2026-03-13-anthropic-run01/baseline-plan.md`
- Task completion score (`0-2`): 0
- Validation quality score (`0-2`): 0
- Protocol adherence score (`0-2`): 0
- Rework burden score (`0-2`): 0
- Transfer readiness score (`0-2`): 1
- Corrective iterations: 0
- Human interventions: 0
- Notes: Baseline hallucinated repo contents and fake tool interactions instead of planning the actual repository phase.

## Condition B: taught-protocol
- Output path: `docs/benchmarks/pilots/BP001/runs/2026-03-13-anthropic-run01/taught-plan-final.md`
- Task completion score (`0-2`): 1
- Validation quality score (`0-2`): 2
- Protocol adherence score (`0-2`): 2
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 2
- Corrective iterations: 1
- Human interventions: 0
- Notes: Major structural uplift with some semantic drift toward a generic teaching-system implementation.

## Comparison summary
- Stronger condition: taught-protocol
- Main observed differences: protocol structure replaced baseline hallucination, but task fidelity remains imperfect
- Confounds: same-operator scoring, protocol-embedded prompt, concise rerun for taught capture
- Did the taught protocol produce a meaningful improvement? Yes

## Closeout
- Recommendation:
  - strong pilot evidence
- Follow-on action:
  - run Anthropic BP002 and compare drift against OpenAI and Google
