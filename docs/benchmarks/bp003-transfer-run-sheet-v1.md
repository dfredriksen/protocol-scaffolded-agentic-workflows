# BP003 Transfer Run Sheet V1

## Purpose
Track hosted-provider execution status for the BP003 transfer variant.

| Model class | Provider | Model name | Condition | Run folder | Status | Score | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- |
| frontier coding | OpenAI | gpt-4.1 | baseline | `docs/benchmarks/pilots/BP003/runs/2026-03-13-openai-run02` | scored | 8/10 | Strong baseline with correct blockers and thinner handoff packaging |
| frontier coding | OpenAI | gpt-4.1 | taught | `docs/benchmarks/pilots/BP003/runs/2026-03-13-openai-run02` | scored | 10/10 | Stronger transfer handoff and clearer gate discipline |
| alternate multimodal/general | Google | gemini-2.5-flash | baseline | `docs/benchmarks/pilots/BP003/runs/2026-03-13-google-run02` | scored | 8/10 | Strong baseline with correct halting and weaker explicit packaging |
| alternate multimodal/general | Google | gemini-2.5-flash | taught | `docs/benchmarks/pilots/BP003/runs/2026-03-13-google-run02` | scored | 10/10 | Stronger transfer packaging and gate accounting |
| alternate general-purpose | Anthropic | claude-sonnet-4-6 | baseline | `docs/benchmarks/pilots/BP003/runs/2026-03-13-anthropic-run02` | scored | 8/10 | Strong structured baseline with less complete final packaging than taught |
| alternate general-purpose | Anthropic | claude-sonnet-4-6 | taught | `docs/benchmarks/pilots/BP003/runs/2026-03-13-anthropic-run02` | scored | 10/10 | Strongest handoff completion and stop-boundary clarity |
| smaller coding-capable | xAI | grok-code-fast-1 | baseline |  | blocked-hitl |  | xAI runtime still blocked by `HTTP 403` and provider `error code: 1010` |
| smaller coding-capable | xAI | grok-code-fast-1 | taught |  | blocked-hitl |  | xAI runtime still blocked by `HTTP 403` and provider `error code: 1010` |

## Transfer question
- Does the BP003 taught workflow continue to improve approval-gate discipline and handoff quality when the workflow is reframed as internal release readiness rather than publication packaging?

## Execution order
1. OpenAI
2. Google
3. Anthropic
4. xAI if access is restored later

## Current interpretation
- The BP003 taught workflow transferred cleanly into the internal-release domain across OpenAI, Google, and Anthropic.
- All three hosted providers preserved the same basic transfer pattern: strong baselines, stronger taught handoff packaging and approval-gate discipline.
- This remains `L0` same-operator evidence until a distinct evaluator performs `L2` review.
