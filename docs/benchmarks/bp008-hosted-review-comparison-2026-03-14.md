# BP008 Hosted-Review Comparison 2026-03-14

## Purpose
Compare the first two hosted-review BP008 local workflow runs and decide whether the workflow branch should continue toward an all-local fallback pair.

## Compared runs
- `W01`: `llama3.2:3b` executor, `gpt-4.1` reviewer
- `W02`: `qwen2.5-coder:3b` executor, `gpt-4.1` reviewer

## Results
| Pair ID | Executor | Reviewer | Single-model taught | Quality-bar loop | Final status | Interpretation |
| --- | --- | --- | --- | --- | --- | --- |
| `W01` | `llama3.2:3b` | `gpt-4.1` | `4/10` | `5/10` | `pass-core` | concrete workflow task is a better surface for this local executor than planning |
| `W02` | `qwen2.5-coder:3b` | `gpt-4.1` | `2/10` | `3/10` | `fail-cap` | coding-oriented executor still fails to produce a verifiable artifact bundle |

## Main findings
- BP008 is a better branch surface than BP007B planning for `llama3.2:3b`.
- The gain is not universal across local models: `qwen2.5-coder:3b` still fails the workflow core bar.
- The strongest current local workflow lane is therefore still `llama3.2:3b` with hosted review.

## Decision
- Continue to `W03` because the hosted-review path did show a real workflow gain for the strongest local executor.
- Treat `qwen2.5-coder:3b` as a weak comparison point rather than a promising primary executor.

## Recommendation
Run the all-local fallback pair next, but keep expectations calibrated: the strongest all-local chance is `llama3.2:3b` executor with `qwen2.5-coder:3b` reviewer only because `llama3.2:3b` already showed a real hosted-review gain on this task.
