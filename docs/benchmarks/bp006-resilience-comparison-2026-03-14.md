# BP006 Resilience Comparison 2026-03-14

## Purpose
Compare the first hybrid and fully local open-weight BP006 pairs so the fallback architecture claim is explicit rather than implied.

## Compared runs
- Hybrid pair: `docs/benchmarks/pilots/BP006/runs/2026-03-14-deepseek-openai-run01`
- Fully local pair: `docs/benchmarks/pilots/BP006/runs/2026-03-14-deepseek-llama32-run01`

## Shared executor lane
- Executor: Ollama `deepseek-coder-v2:16b-lite-instruct-q3_K_S`
- Same baseline score: `2/10`
- Same single-model taught score: `3/10`

## Reviewer comparison
### Hybrid reviewer
- Reviewer: OpenAI `gpt-4.1`
- Correction: `5/10`
- Takeover: `6/10`
- Best-condition gain over single-model taught: `+3`

### Fully local reviewer
- Reviewer: Ollama `llama3.2:3b`
- Correction: `4/10`
- Takeover: `4/10`
- Best-condition gain over single-model taught: `+1`

## Main result
- The hybrid reviewer materially outperformed the fully local reviewer on the same weak open-weight executor lane.
- Both reviewer architectures improved on the local single-model taught condition.
- Only the hybrid path produced a clearly stronger rescue effect.

## Interpretation
- The fallback ladder is now concrete rather than speculative.
- `Local executor + strong cloud reviewer` is the strongest currently retained resilience pattern.
- `Local executor + local reviewer` is real but weaker, and it does not yet produce a promotion-grade open-weight result.
- Reviewer quality matters more than simply adding a second model.

## Architectural implications
- When the executor is weak, stronger-reviewer takeover can be more effective than expecting the executor to absorb critique fully.
- A small local reviewer can still provide modest structural benefit, which is useful for degraded or disconnected operation.
- The current all-local fallback is better than the executor alone, but not strong enough to replace the hybrid path as the preferred resilience mode.

## Recommendation
- Keep the hybrid pair as the primary fallback reference result.
- Treat the fully local pair as proof of limited but real all-local recoverability.
- Before adding more local pairs, either:
  - test one stronger local reviewer if hardware permits, or
  - synthesize BP006 more broadly and return effort to `L2` or BP005.
