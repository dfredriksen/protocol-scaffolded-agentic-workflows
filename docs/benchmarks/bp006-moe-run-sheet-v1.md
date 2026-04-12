# BP006 MoE Run Sheet V1

## Purpose
Track executor-reviewer mixture-of-experts planning runs separately from the single-model hosted matrix.

| Executor class | Executor provider | Executor model | Reviewer provider | Reviewer model | Condition set | Run folder | Status | Best score | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| frontier coding | OpenAI | gpt-4.1 | Anthropic | claude-sonnet-4-6 | A/B/C/D | `docs/benchmarks/pilots/BP006/runs/2026-03-14-openai-anthropic-run01` | scored | 6/10 | First hosted-hosted MoE pair: correction beat single-model taught, takeover did not |
| frontier coding | OpenAI | gpt-4.1 | Google | gemini-2.5-flash | A/B/C/D | `docs/benchmarks/pilots/BP006/runs/2026-03-14-openai-google-run01` | scored | 5/10 | Lighter reviewer path: neither correction nor takeover beat single-model taught |
| alternate multimodal/general | Google | gemini-2.5-flash | OpenAI | gpt-4.1 | A/B/C/D | `docs/benchmarks/pilots/BP006/runs/2026-03-14-google-openai-run01` | scored | 6/10 | Reverse pair: takeover beat correction, suggesting stronger-reviewer authorship mattered more than critique absorption |
| alternate general-purpose | Anthropic | claude-sonnet-4-6 | OpenAI | gpt-4.1 | A/B/C/D | `docs/benchmarks/pilots/BP006/runs/2026-03-14-anthropic-openai-run01` | scored | 8/10 | Reverse pair: correction beat both single-model taught and takeover, suggesting Anthropic can absorb strong review well |
| exploratory open weight | Ollama | deepseek-coder-v2:16b-lite-instruct-q3_K_S | OpenAI | gpt-4.1 | A/B/C/D | `docs/benchmarks/pilots/BP006/runs/2026-03-14-deepseek-openai-run01` | scored | 6/10 | First hybrid pair: both MoE conditions beat the local single-model taught lane, and takeover beat correction |
| exploratory open weight | Ollama | deepseek-coder-v2:16b-lite-instruct-q3_K_S | Ollama | llama3.2:3b | A/B/C/D | `docs/benchmarks/pilots/BP006/runs/2026-03-14-deepseek-llama32-run01` | scored | 4/10 | First fully local pair: both MoE conditions beat the single-model taught lane, but only modestly |
| smaller coding-capable | xAI | grok-code-fast-1 | OpenAI | gpt-4.1 | A/B/C/D |  | blocked-hitl |  | xAI runtime still blocked |

## Primary question
- Can an executor-plus-reviewer architecture beat the current single-model taught condition on the same planning task, or does it only help when the reviewer effectively replaces the original executor?

## Execution order
1. OpenAI executor + Anthropic reviewer
2. Google executor + OpenAI reviewer
3. OpenAI executor + Google reviewer
4. Anthropic executor + OpenAI reviewer
5. DeepSeek executor + OpenAI reviewer
6. DeepSeek executor + Llama 3.2 3B reviewer
7. xAI only if runtime access is restored

## Current interpretation
- The BP006 branch is now execution-ready.
- The first hosted-hosted comparison is now retained: `gpt-4.1` executor with `claude-sonnet-4-6` reviewer produced a modest positive result for correction.
- In that first pair, reviewer critique was sharper than self-validation, but reviewer takeover did not clearly improve beyond correction.
- The second hosted-hosted comparison is also retained: `gemini-2.5-flash` executor with `gpt-4.1` reviewer produced a different pattern, where takeover beat correction.
- The third hosted-hosted comparison is now retained: `gpt-4.1` executor with `gemini-2.5-flash` reviewer did not improve over the single-model taught condition in either correction or takeover.
- The fourth hosted-hosted comparison is now retained: `claude-sonnet-4-6` executor with `gpt-4.1` reviewer again favored correction over takeover.
- The first hybrid comparison is now retained: `deepseek-coder-v2:16b-lite-instruct-q3_K_S` executor with `gpt-4.1` reviewer favored takeover over correction, but both MoE conditions beat the local single-model taught lane.
- The first fully local comparison is now retained: `deepseek-coder-v2:16b-lite-instruct-q3_K_S` executor with `llama3.2:3b` reviewer also beat the local single-model taught lane, but only modestly and without a decisive takeover advantage.
- Taken together, the first two BP006 pairs suggest that MoE behavior depends on executor strength: stronger executors may benefit from critique-plus-revision, while weaker executors may benefit more from reviewer takeover.
- The third pair sharpens that interpretation: reviewer quality also matters materially. A weaker reviewer can erase the MoE advantage even when the executor is strong.
- The fourth pair strengthens the correction-side pattern: a stronger reviewer plus an executor capable of absorbing critique can outperform both the single-model taught lane and reviewer takeover.
- The hybrid pair extends that pattern into the resilience setting: a stronger cloud reviewer can materially lift a weaker local executor, but the highest score still comes when the reviewer becomes the final author.
- The fully local pair clarifies the fallback story: open-weight plus open-weight review can help, but the gain is smaller than the hybrid path and still leaves major repo-grounding errors.
- Reverse pairings are included because MoE benefits may come from critique quality, not just from the strongest executor.
