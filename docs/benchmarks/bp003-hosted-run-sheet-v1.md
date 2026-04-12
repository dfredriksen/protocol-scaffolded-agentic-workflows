# BP003 Hosted Run Sheet V1

## Purpose
Track hosted-provider execution status for the harder BP003 tool-mediated workflow packet.

| Model class | Provider | Model name | Condition | Run folder | Status | Score | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- |
| frontier coding | OpenAI | gpt-4.1 | baseline | `docs/benchmarks/pilots/BP003/runs/2026-03-13-openai-run01` | scored | 8/10 | Strong baseline with correct halting and thinner handoff packaging |
| frontier coding | OpenAI | gpt-4.1 | taught | `docs/benchmarks/pilots/BP003/runs/2026-03-13-openai-run01` | scored | 10/10 | Clearer draft-state separation and stronger handoff discipline |
| alternate multimodal/general | Google | gemini-2.5-flash | baseline | `docs/benchmarks/pilots/BP003/runs/2026-03-13-google-run01` | scored | 8/10 | Strong baseline with correct blockers and weaker explicit state separation |
| alternate multimodal/general | Google | gemini-2.5-flash | taught | `docs/benchmarks/pilots/BP003/runs/2026-03-13-google-run01` | scored | 10/10 | Stronger approval-gate accounting and reviewer handoff packaging |
| alternate general-purpose | Anthropic | claude-sonnet-4-6 | baseline | `docs/benchmarks/pilots/BP003/runs/2026-03-13-anthropic-run01` | scored | 8/10 | Strong baseline with correct halting but incomplete final packaging sections |
| alternate general-purpose | Anthropic | claude-sonnet-4-6 | taught | `docs/benchmarks/pilots/BP003/runs/2026-03-13-anthropic-run01` | scored | 10/10 | Stronger state labeling, cleaner handoff, and more complete protocol packaging |
| smaller coding-capable | xAI | grok-code-fast-1 | baseline |  | blocked-hitl |  | xAI runtime still blocked by `HTTP 403` and provider `error code: 1010` |
| smaller coding-capable | xAI | grok-code-fast-1 | taught |  | blocked-hitl |  | xAI runtime still blocked by `HTTP 403` and provider `error code: 1010` |

## Execution order
1. OpenAI
2. Google
3. Anthropic
4. xAI if access is restored later

## Scoring focus
- approval-gate discipline
- draft-versus-authorized separation
- handoff packet quality
- multi-artifact state retention

## Current interpretation
- BP003 is the next benchmark family to execute because BP002 showed ceiling effects on Google and Anthropic.
- OpenAI remains the most informative first lane because it showed the clearest repeated uplift on BP001 and BP002.
- OpenAI BP003 produced another strong taught-condition win despite a strong baseline.
- Google BP003 also widened the workflow delta relative to BP002, suggesting the harder packet reduced ceiling effects.
- Anthropic BP003 also widened the workflow delta relative to BP002, though its baseline was already strong and its raw output needed derived final summaries.
