# BP006 MoE Pairing Matrix V1

## Purpose
Constrain the MoE branch to a small number of interpretable pairings.

## Pairing principles
- Hold the primary task fixed.
- Start with hosted-hosted pairs before hybrid or open-weight review.
- Prefer one strong reviewer and one alternate reviewer before exploring many permutations.
- Distinguish correction from takeover rather than averaging them together.

## Initial pairings
| Pair ID | Executor | Reviewer | Why this pair matters |
| --- | --- | --- | --- |
| P1 | `gpt-4.1` | `claude-sonnet-4-6` | Tests whether a strong alternate reviewer can improve an already-strong frontier executor |
| P2 | `gemini-2.5-flash` | `gpt-4.1` | Tests whether a stronger reviewer can rescue a more mixed planning lane |
| P3 | `gpt-4.1` | `gemini-2.5-flash` | Tests whether reviewer quality matters more than executor quality |
| P4 | `claude-sonnet-4-6` | `gpt-4.1` | Tests whether OpenAI review stabilizes Anthropic's drift-prone baseline behavior |
| P5 | `deepseek-coder-v2:16b-lite-instruct-q3_K_S` | `gpt-4.1` | Hybrid stretch pair only if hosted-hosted MoE shows clear signal |

## Pairing freeze rule
- Do not add new pairs until at least one existing pair shows either:
  - correction beating the single-model taught condition, or
  - takeover beating correction in a way that clarifies authorship effects.

## Non-goal
- This matrix is not a full pairwise leaderboard.
- It is a compact architectural test of critique and authorship.
