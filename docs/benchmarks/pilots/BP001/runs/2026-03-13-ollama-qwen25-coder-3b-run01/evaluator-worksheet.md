# Ollama Qwen2.5 Coder 3B BP001 Evaluator Worksheet Run 01

## Run metadata
- Run date: 2026-03-13
- Evaluator: Codex
- Agent/model: Ollama `qwen2.5-coder:3b`
- Task packet: `BP001-T1`
- Prompt wrapper: tighter repository-only guardrails adapted from the prior open-weight rerun

## Condition A: weak-prompt baseline
- Output path: `docs/benchmarks/pilots/BP001/runs/2026-03-13-ollama-qwen25-coder-3b-run01/baseline-plan.md`
- Task completion score (`0-2`): 1
- Validation quality score (`0-2`): 0
- Protocol adherence score (`0-2`): 0
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 1
- Corrective iterations: 0
- Human interventions: 0
- Notes: The baseline is more concise and better aligned than the earlier `qwen2.5:3b` baseline, but it still imagines test environments, tools, and directories rather than planning from the repository's existing benchmark packets and retained markdown artifacts.

## Condition B: taught-protocol
- Output path: `docs/benchmarks/pilots/BP001/runs/2026-03-13-ollama-qwen25-coder-3b-run01/taught-plan-final.md`
- Task completion score (`0-2`): 1
- Validation quality score (`0-2`): 1
- Protocol adherence score (`0-2`): 2
- Rework burden score (`0-2`): 0
- Transfer readiness score (`0-2`): 1
- Corrective iterations: 1
- Human interventions: 0
- Notes: The taught draft adds a cleaner planning skeleton than the baseline and includes explicit checkpoints, risks, dependencies, fallback paths, and a scorecard. However, the validator pass did not materially improve the final answer: the revision stayed generic, repeated references to existing data and environment setup, and did not anchor itself to the repo's actual run-folder and artifact conventions.

## Comparison summary
- Stronger condition: taught-protocol
- Main observed differences: The taught condition is more structured and more legible than the baseline, but the gain is limited by poor revision uptake. The model did not use the validator feedback to meaningfully tighten the final plan.
- Confounds: same-operator scoring; tighter repository guardrails changed the prompts relative to the original BP001 packet; protocol embedding directly favors structural compliance; open-weight local inference may compress revision depth.
- Did the taught protocol produce a meaningful improvement? Yes, but only modestly. The model improved structure more than task fidelity.

## Closeout
- Recommendation:
  - keep as a modest positive open-weight result
- Follow-on action:
  - compare against the very-small `qwen2.5:3b` lane before deciding whether this model deserves transfer or BP002 work
