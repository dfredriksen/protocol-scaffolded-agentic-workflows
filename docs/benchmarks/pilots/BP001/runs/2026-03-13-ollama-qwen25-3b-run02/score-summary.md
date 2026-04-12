# Ollama Qwen2.5 3B BP001 Run 02 Score Summary

## Stronger condition
- Taught-protocol condition

## Baseline total
- `3/10`

## Taught total
- `6/10`

## Main observed differences
- The tighter baseline no longer hallucinates databases, user training, or enterprise rollout work. It stays within the repository task and names several retained markdown artifacts.
- The taught condition still provides the stronger output because it keeps the planning skeleton, validator pass, risks, dependencies, fallback paths, and scorecard.
- The main remaining weakness is that the taught revision still repeats generic model-training and execution language instead of grounding itself in the repo's existing benchmark packet and run-folder conventions.

## Confounds
- Same-operator scoring
- Tighter repository-anchoring guardrails changed both prompts relative to run 01
- Protocol embedding directly favors structural compliance
- This remains a single-model open-weight smoke result on storage-constrained local hardware

## Interpretation
This tighter rerun improves the evidentiary value of the first open-weight smoke point for Ollama `qwen2.5:3b`. The low-parameter model can respond to tighter task framing, and the taught condition still outperforms the baseline. However, the result remains mixed rather than strong because both conditions are still too generic relative to the repository's actual markdown benchmark workflow.

## Follow-on action
- Treat run 02 as the primary `qwen2.5:3b` BP001 reference point.
- Keep run 01 as supporting evidence showing the effect of looser vs tighter repository anchoring.
- Do not expand the open-weight lane further until storage headroom and one-model-at-a-time operating constraints are accounted for.
