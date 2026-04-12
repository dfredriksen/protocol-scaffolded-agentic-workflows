# BP007B Local Verifier Comparison 2026-03-14

## Purpose
Compare the verifier-backed local executor lanes in BP007B and decide whether this task family should continue as the primary local quality-bar search surface.

## Compared runs
- `T07`: `llama3.2:3b` executor, `gpt-4.1` reviewer
- `T08`: `deepseek-coder-v2:16b-lite-instruct-q3_K_S` executor, `gpt-4.1` reviewer
- `T09`: `qwen2.5-coder:3b` executor, `gpt-4.1` reviewer

## Results
| Pair ID | Executor | Reviewer | Single-model taught | Tiered loop | Final status | Interpretation |
| --- | --- | --- | --- | --- | --- | --- |
| `T07` | `llama3.2:3b` | `gpt-4.1` | `4/10` | `4/10` | `pass-core` | strongest current local verifier-backed point, but still below stretch |
| `T08` | `deepseek-coder-v2:16b-lite-instruct-q3_K_S` | `gpt-4.1` | `3/10` | `3/10` | `fail-cap` | stabilized runtime profile, but still weak on repo-grounded planning |
| `T09` | `qwen2.5-coder:3b` | `gpt-4.1` | `3/10` | `3/10` | `fail-cap` | clean runtime, but no core pass and no gain over DeepSeek |

## Main findings
- The verifier-backed gate is now doing its job. Earlier false-positive stretch passes are no longer driving the result surface.
- `llama3.2:3b` is the only retained local executor that reaches `pass-core` on this planning task family.
- Both `deepseek-coder-v2:16b-lite-instruct-q3_K_S` and `qwen2.5-coder:3b` fail the verifier-backed core bar even after runtime stabilization and a tiered review loop.
- The main bottleneck is no longer local runtime or reviewer leniency. It is task-fit: weaker local executors still do not produce sufficiently repo-grounded planning artifacts on this benchmark.

## Program-level interpretation
- BP007B successfully answered the methodological question it was introduced to answer: the right bar shape for local models needs verifier-backed review, and the bar can now distinguish `pass-core` from false-positive stretch.
- BP007B has not yet produced a local `pass-stretch` result on this planning task family.
- More iteration on the same local executors is unlikely to produce a materially stronger result without changing either the task family or the model family.

## Triage decision
- Freeze the current BP007B local planning-task comparison as pilot evidence.
- Do not keep iterating on `llama3.2:3b`, DeepSeek, or `qwen2.5-coder:3b` on this exact task family.
- Shift the next local quality-bar search to either:
  - a different local model family with stronger planning behavior, or
  - a different benchmark task where local executors may benefit more from iterative review than they do on repo-grounded planning.

## Recommendation
Treat BP007B on this task family as a completed diagnostic branch. The next useful local step should be a branch change, not another same-family rerun.
