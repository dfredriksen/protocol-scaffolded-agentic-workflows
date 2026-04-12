# BP007B Run Sheet V1

## Purpose
Track tiered quality-bar runs intended to find the right bar shape for local models.

| Pair ID | Executor | Reviewer | Core loop cap | Stretch loop cap | Status | Final status | Best score | Run folder | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| T01 | `deepseek-coder-v2:16b-lite-instruct-q3_K_S` | `gpt-4.1` | `2` | `1` | scored | `fail-cap` | `4/10` | `docs/benchmarks/pilots/BP007B/runs/2026-03-14-deepseek-openai-run01` | cleaner diagnosis than BP007, but still no core pass |
| T02 | `deepseek-coder-v2:16b-lite-instruct-q3_K_S` | `llama3.2:3b` | `2` | `1` | scored | `pass-core` | `5/10` | `docs/benchmarks/pilots/BP007B/runs/2026-03-14-deepseek-llama32-run01` | first all-local tiered-bar result; core pass reached, stretch not reached |
| T03 | `llama3.2:3b` | `gpt-4.1` | `2` | `1` | scored | `pass-stretch` | `5/10` | `docs/benchmarks/pilots/BP007B/runs/2026-03-14-llama32-openai-run01` | reviewer reported stretch pass, but evaluator treated it as a false-positive bar result |
| T04 | `llama3.2:3b` | `gpt-4.1` | `2` | `1` | scored | `pass-core` | `5/10` | `docs/benchmarks/pilots/BP007B/runs/2026-03-14-llama32-openai-run02` | controlled rerun from the same core-pass artifact; tightened stretch bar now rejects the old false-positive stretch pass |
| T05 | `llama3.2:3b` | `gpt-4.1` | `2` | `1` | scored | `pass-stretch` | `4/10` | `docs/benchmarks/pilots/BP007B/runs/2026-03-14-llama32-openai-run03` | explicit stretch-repair attempt produced fabricated repo specifics and triggered a second false-positive stretch pass |
| T06 | `llama3.2:3b` | `gpt-4.1` | `2` | `1` | scored | `pass-core` | `4/10` | `docs/benchmarks/pilots/BP007B/runs/2026-03-14-llama32-openai-run04` | verifier-backed rerun rejects the fabricated-specificity artifact against the real repo inventory |
| T07 | `llama3.2:3b` | `gpt-4.1` | `2` | `1` | scored | `pass-core` | `4/10` | `docs/benchmarks/pilots/BP007B/runs/2026-03-14-llama32-openai-run05` | first fresh local artifact under verifier-backed review avoids fabricated specifics but still fails stretch after one repair |
| T08 | `deepseek-coder-v2:16b-lite-instruct-q3_K_S` | `gpt-4.1` | `2` | `1` | scored | `fail-cap` | `3/10` | `docs/benchmarks/pilots/BP007B/runs/2026-03-14-deepseek-openai-run02` | constrained CPU rerun removed the runtime confound, but the executor still failed the core bar and underperformed the earlier DeepSeek tiered-bar point |
| T09 | `qwen2.5-coder:3b` | `gpt-4.1` | `2` | `1` | scored | `fail-cap` | `3/10` | `docs/benchmarks/pilots/BP007B/runs/2026-03-14-qwen25coder-openai-run01` | smaller coding-capable executor runs cleanly but still fails the verifier-backed core bar and does not improve on DeepSeek |

## Initial execution order
1. compare the verifier-backed local lanes and decide whether BP007B should stop on this task family or shift to a different model family or benchmark task

## Interpretation note
- BP007B is the branch for finding the right bar shape for weaker models.
- `pass-core` is not enough for the final research claim; it is the path toward `pass-stretch`.
- The first retained BP007B run shows that the tiered bar gives a cleaner diagnosis, but it still does not rescue the weakest executor under strong review.
- The second retained BP007B run shows the first `pass-core` result and suggests the tiered bar is more useful than the flat bar for all-local fallback evaluation.
- The third retained BP007B run shows that the current stretch bar can still over-accept a local artifact that invents repo structure, even under strong hosted review.
- The next run should be interpreted against the tightened stretch bar, not the earlier permissive version.
- The fourth retained BP007B point shows that the tightened stretch bar correctly rejects the earlier false-positive stretch pass and leaves the strongest current local candidate at `pass-core`.
- The fifth retained BP007B point shows that the same reviewer can still be fooled by fabricated specificity, which means reviewer verification against the real repo inventory is now the bottleneck.
- The sixth retained BP007B point shows that verifier-backed review fixes the reviewer-side acceptance problem and leaves the local executor as the remaining bottleneck.
- The seventh retained BP007B point shows that a fresh `llama3.2:3b` artifact can survive to `pass-core` without fabricated specifics, but it still cannot reach stretch quality under verifier-backed review, so the next useful move is to change executors rather than keep iterating on the same model.
- The eighth BP007B point shows that DeepSeek can be stabilized on this machine with a constrained CPU profile, but the verifier-backed result is still weak and fails the core bar, so the next useful move remains a smaller executor rather than more DeepSeek iteration.
- The ninth BP007B point shows that `qwen2.5-coder:3b` removes the runtime question cleanly but still fails the verifier-backed core bar, which means the bottleneck on this task family is planning quality and repo grounding rather than local runtime stability.
