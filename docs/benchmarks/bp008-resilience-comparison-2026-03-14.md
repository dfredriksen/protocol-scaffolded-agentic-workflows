# BP008 Resilience Comparison 2026-03-14

## Purpose
Compare the strongest hosted-review BP008 workflow lane against the first all-local fallback pair.

## Compared runs
- `W01`: `llama3.2:3b` executor, `gpt-4.1` reviewer
- `W03`: `llama3.2:3b` executor, `qwen2.5-coder:3b` reviewer

## Results
| Pair ID | Executor | Reviewer | Single-model taught | Quality-bar loop | Final status | Interpretation |
| --- | --- | --- | --- | --- | --- | --- |
| `W01` | `llama3.2:3b` | `gpt-4.1` | `4/10` | `5/10` | `pass-core` | strongest current local workflow result |
| `W03` | `llama3.2:3b` | `qwen2.5-coder:3b` | `2/10` | `4/10` | `pass-core` | all-local fallback preserves some gain but under a softer review surface |

## Main findings
- The workflow task continues to be a better local branch surface than BP007B planning.
- The hosted reviewer remains materially stronger than the all-local reviewer.
- The all-local path still shows a resilience result: the executor improves relative to its single-model taught condition and reaches `pass-core`.

## Interpretation
- `W03` is not as strong as `W01`, but it is meaningful fallback evidence.
- The concrete workflow task preserves more local-model value than the planning task did, even without cloud review.
- Reviewer quality still matters sharply, so the all-local branch should be described as a resilience mode rather than a full substitute for hosted-review quality.

## Recommendation
- Freeze BP008 as the first successful local workflow branch.
- Keep `W01` as the strongest local-quality result.
- Keep `W03` as the first all-local fallback result.
