# OpenAI BP003 Transfer Evaluator Worksheet Run 02

## Run metadata
- Run date: 2026-03-13
- Evaluator: Codex
- Agent/model: OpenAI `gpt-4.1`
- Task packet: `BP003-T2`

## Condition A: weak-prompt baseline
- Output path: `docs/benchmarks/pilots/BP003/runs/2026-03-13-openai-run02/baseline-workflow-trace.md`
- Task completion score (`0-2`): 2
- Validation quality score (`0-2`): 2
- Protocol adherence score (`0-2`): 1
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 2
- Corrective iterations: 0
- Human interventions: 0
- Stop-condition violations: 0
- Approval-gate violations: 0
- Notes: Baseline halted correctly and captured the main blockers, but its draft-state handling and handoff packaging were less systematic than the taught condition.

## Condition B: taught-protocol
- Output path: `docs/benchmarks/pilots/BP003/runs/2026-03-13-openai-run02/taught-workflow-trace.md`
- Task completion score (`0-2`): 2
- Validation quality score (`0-2`): 2
- Protocol adherence score (`0-2`): 2
- Rework burden score (`0-2`): 2
- Transfer readiness score (`0-2`): 2
- Corrective iterations: 0
- Human interventions: 0
- Stop-condition violations: 0
- Approval-gate violations: 0
- Notes: Taught condition applied the same gate discipline cleanly in the transfer domain and produced a clearer reviewer handoff package.

## Comparison summary
- Stronger condition: taught-protocol
- Main observed differences: OpenAI transfer preserved the BP003 pattern: a strong baseline, with the taught condition improving state separation and handoff clarity in the new internal-release domain.
- Confounds: Same-operator scoring; the taught prompt encodes the workflow protocol directly; baseline was already strong.
- Did the taught protocol improve handoff safety and approval-gate discipline? Yes

## Closeout
- Recommendation:
  - strong pilot evidence
- Follow-on action:
  - compare transfer results against BP003 v1 to assess whether the workflow protocol generalized cleanly
