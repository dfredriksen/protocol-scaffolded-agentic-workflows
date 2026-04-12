# BP006 Exhaustive Run Sheet V1

## Purpose
Track execution status for all currently eligible ordered BP006 pairs.

| Pair ID | Executor | Reviewer | Family | Status | Best score | Run folder | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- |
| E01 | `gpt-4.1` | `claude-sonnet-4-6` | hosted-hosted | scored | `6/10` | `docs/benchmarks/pilots/BP006/runs/2026-03-14-openai-anthropic-run01` | correction beat single-model taught |
| E02 | `gpt-4.1` | `gemini-2.5-flash` | hosted-hosted | scored | `5/10` | `docs/benchmarks/pilots/BP006/runs/2026-03-14-openai-google-run01` | no MoE gain beyond single-model taught |
| E03 | `claude-sonnet-4-6` | `gpt-4.1` | hosted-hosted | scored | `8/10` | `docs/benchmarks/pilots/BP006/runs/2026-03-14-anthropic-openai-run01` | strongest current correction result |
| E04 | `claude-sonnet-4-6` | `gemini-2.5-flash` | hosted-hosted | planned |  |  | missing reverse hosted-hosted light-review pair |
| E05 | `gemini-2.5-flash` | `gpt-4.1` | hosted-hosted | scored | `6/10` | `docs/benchmarks/pilots/BP006/runs/2026-03-14-google-openai-run01` | takeover beat correction |
| E06 | `gemini-2.5-flash` | `claude-sonnet-4-6` | hosted-hosted | planned |  |  | missing reverse hosted-hosted alternate-review pair |
| E07 | `gpt-4.1` | `deepseek-coder-v2:16b-lite-instruct-q3_K_S` | hosted->local | planned |  |  | high-interest reviewer-quality inversion |
| E08 | `gpt-4.1` | `llama3.2:3b` | hosted->local | planned |  |  | light local reviewer over strong hosted executor |
| E09 | `claude-sonnet-4-6` | `deepseek-coder-v2:16b-lite-instruct-q3_K_S` | hosted->local | planned |  |  | drift-prone executor with weak local reviewer |
| E10 | `claude-sonnet-4-6` | `llama3.2:3b` | hosted->local | planned |  |  | lower-cost local reviewer over Anthropic executor |
| E11 | `gemini-2.5-flash` | `deepseek-coder-v2:16b-lite-instruct-q3_K_S` | hosted->local | planned |  |  | weakest likely hosted->local pair |
| E12 | `gemini-2.5-flash` | `llama3.2:3b` | hosted->local | planned |  |  | lower-cost all-mixed pair |
| E13 | `deepseek-coder-v2:16b-lite-instruct-q3_K_S` | `gpt-4.1` | local->hosted | scored | `6/10` | `docs/benchmarks/pilots/BP006/runs/2026-03-14-deepseek-openai-run01` | strongest current fallback pair |
| E14 | `deepseek-coder-v2:16b-lite-instruct-q3_K_S` | `claude-sonnet-4-6` | local->hosted | planned |  |  | high-interest comparison against OpenAI reviewer |
| E15 | `deepseek-coder-v2:16b-lite-instruct-q3_K_S` | `gemini-2.5-flash` | local->hosted | planned |  |  | tests weaker hosted reviewer against same executor |
| E16 | `llama3.2:3b` | `gpt-4.1` | local->hosted | planned |  |  | small-Llama executor rescue pair |
| E17 | `llama3.2:3b` | `claude-sonnet-4-6` | local->hosted | planned |  |  | alternate strong reviewer over small-Llama executor |
| E18 | `llama3.2:3b` | `gemini-2.5-flash` | local->hosted | planned |  |  | weaker hosted reviewer over small-Llama executor |
| E19 | `deepseek-coder-v2:16b-lite-instruct-q3_K_S` | `llama3.2:3b` | local-local | scored | `4/10` | `docs/benchmarks/pilots/BP006/runs/2026-03-14-deepseek-llama32-run01` | first fully local pair |
| E20 | `llama3.2:3b` | `deepseek-coder-v2:16b-lite-instruct-q3_K_S` | local-local | planned |  |  | reverse fully local pair |

## Current completion
- Retained pairs: `6/20`
- Remaining pairs: `14/20`

## Recommended execution order
1. Complete the hosted-hosted family first: `E04`, `E06`
2. Complete the high-value local->hosted family next: `E14`, `E15`, `E16`, `E17`, `E18`
3. Complete the reverse fully local pair: `E20`
4. Only then expand into hosted->local reviewer pairs, which are lower-value and more likely to show no gain

## Notes
- This sheet intentionally reuses already retained runs rather than cloning them.
- Additional local models should not be added to the exhaustive matrix until this `5-model / 20-pair` set is either completed or explicitly cut down.
