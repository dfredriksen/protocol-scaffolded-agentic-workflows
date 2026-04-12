# BP007 Run Sheet V1

## Purpose
Track protocol-plus-quality-bar loop runs separately from BP006 one-shot MoE runs.

| Pair ID | Executor | Reviewer | Loop cap | Status | Final status | Best score | Run folder | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Q01 | `gpt-4.1` | `claude-sonnet-4-6` | `2` | planned |  |  |  | strong hosted pair to test convergence on a capable executor |
| Q02 | `claude-sonnet-4-6` | `gpt-4.1` | `2` | scored | `pass` | `7/10` | `docs/benchmarks/pilots/BP007/runs/2026-03-14-anthropic-openai-run01` | loop passed immediately but did not beat the single-model taught baseline |
| Q03 | `deepseek-coder-v2:16b-lite-instruct-q3_K_S` | `gpt-4.1` | `2` | scored | `fail-cap` | `4/10` | `docs/benchmarks/pilots/BP007/runs/2026-03-14-deepseek-openai-run01` | loop surfaced stable defects and failed to converge within the cap |
| Q04 | `deepseek-coder-v2:16b-lite-instruct-q3_K_S` | `llama3.2:3b` | `2` | scored | `pass` | `5/10` | `docs/benchmarks/pilots/BP007/runs/2026-03-14-deepseek-llama32-run01` | fully local loop converged after one revision, but under a lighter reviewer standard than Q03 |

## Initial execution order
1. `Q01`

## Interpretation note
- BP007 is not a replacement for BP006.
- BP006 asks whether one-shot critique or takeover helps.
- BP007 asks whether a fixed quality bar improves convergence and closure.
- The first retained BP007 run shows that a strong hosted executor can satisfy the current bar immediately, which suggests the bar should be tested next on weaker executors or tightened before broader hosted expansion.
- The second retained BP007 run shows the other side of the problem: the weak hybrid executor triggers meaningful review pressure, but still cannot clear the bar within the cap.
- The third retained BP007 run shows that the fully local loop can reach `pass`, but the gain appears to depend partly on reviewer leniency rather than a clearly strong final artifact.
