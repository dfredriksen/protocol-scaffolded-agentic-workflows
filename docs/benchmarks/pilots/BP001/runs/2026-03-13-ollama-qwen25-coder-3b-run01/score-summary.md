# Ollama Qwen2.5 Coder 3B BP001 Run 01 Score Summary

## Stronger condition
- Taught-protocol condition

## Baseline total
- `3/10`

## Taught total
- `5/10`

## Main observed differences
- The coding-capable baseline is tighter and less wildly misaligned than the earlier `qwen2.5:3b` baseline, but it still invents environment setup, tools, and generic directory structures instead of using the repository's actual benchmark artifacts.
- The taught condition improves structure by adding validation checkpoints, risks, dependencies, fallback paths, and a scorecard.
- The main limiter is revision quality: after validator feedback, the final taught answer remained almost unchanged and did not translate the protocol into a genuinely repository-grounded execution plan.

## Confounds
- Same-operator scoring
- Tighter repository-anchoring guardrails changed both prompts relative to the original BP001 packet
- Protocol embedding directly favors structural compliance
- This remains a one-model-at-a-time open-weight run on local hardware

## Interpretation
This is a modest positive result for Ollama `qwen2.5-coder:3b`. The taught condition still outperforms the baseline, but the absolute quality remains mixed because the model is better at producing structure than at using validator feedback to fully ground the plan in the repository's markdown benchmark workflow.

## Follow-on action
- Keep this as the first small coding-capable BP001 point.
- Compare it directly against `qwen2.5:3b` before deciding on transfer or BP002 expansion.
- Do not treat this as strong low-parameter evidence yet.
