# BP006 Cross-Pair Synthesis 2026-03-14

## Purpose
Summarize the retained BP006 executor-reviewer results across hosted, hybrid, and fully local pairings.

## Retained pairs
| Pair | Executor | Reviewer | Baseline | Single-model taught | Correction | Takeover | Best condition |
| --- | --- | --- | --- | --- | --- | --- | --- |
| P1 | `gpt-4.1` | `claude-sonnet-4-6` | `4/10` | `5/10` | `6/10` | `5/10` | `correction` |
| P2 | `gemini-2.5-flash` | `gpt-4.1` | `4/10` | `5/10` | `5/10` | `6/10` | `takeover` |
| P3 | `gpt-4.1` | `gemini-2.5-flash` | `4/10` | `5/10` | `5/10` | `5/10` | `tie with single-model taught` |
| P4 | `claude-sonnet-4-6` | `gpt-4.1` | `5/10` | `7/10` | `8/10` | `6/10` | `correction` |
| P5 | `deepseek-coder-v2:16b-lite-instruct-q3_K_S` | `gpt-4.1` | `2/10` | `3/10` | `5/10` | `6/10` | `takeover` |
| P6 | `deepseek-coder-v2:16b-lite-instruct-q3_K_S` | `llama3.2:3b` | `2/10` | `3/10` | `4/10` | `4/10` | `correction/takeover tie` |

## Main result
- BP006 now has real architecture evidence rather than a single anecdotal pair.
- Mixture-of-experts gains depend on both executor strength and reviewer quality.
- Adding a second model is not enough by itself; weak review can erase the advantage.

## Pattern summary
### Strong executor + strong reviewer
- P1 and P4 both favored `correction`.
- When the executor is capable of absorbing critique, the best result comes from keeping the original model as final author and improving it with sharper review.

### Weaker executor + stronger reviewer
- P2 and P5 favored `takeover`.
- When the executor is weaker, the strongest reviewer often helps most by becoming final author rather than by relying on the executor to absorb the critique.

### Strong executor + weaker reviewer
- P3 showed no MoE gain.
- This is the clearest evidence that reviewer quality matters more than simply increasing model count.

### Weaker executor + weaker reviewer
- P6 showed only a modest gain.
- Fully local review helps somewhat, but it does not yet match the hybrid path.

## Resilience ladder
1. Hosted strong reviewer over hosted or strong executor:
   - strongest current correction result is P4 at `8/10`
2. Hybrid local executor plus cloud reviewer:
   - P5 reaches `6/10` and is the strongest retained fallback result
3. Fully local executor plus local reviewer:
   - P6 reaches `4/10` and shows limited but real degraded-mode recoverability

## What BP006 does and does not support
### Supported
- Two-model architectures can outperform a single-model taught condition.
- The useful mode depends on whether the executor can absorb critique.
- Hybrid review can materially lift a weak open-weight executor.
- Fully local review provides a weaker but non-zero fallback effect.

### Not yet supported
- A claim that all MoE pairings help.
- A claim that local-local review is strong enough to replace the hybrid path.
- A claim that takeover is always better than correction or vice versa.

## Recommendation
- Freeze BP006 as mixed but meaningful architecture evidence.
- Keep P5 as the primary resilience reference result.
- Keep P6 as proof of limited all-local recoverability.
- Before adding more local pairs, either:
  - test one clearly stronger local reviewer if hardware permits, or
  - shift effort to `L2` review and BP005 self-protocol-learning.
