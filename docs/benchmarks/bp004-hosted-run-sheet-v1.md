# BP004 Hosted Run Sheet V1

## Purpose
Track hosted-provider execution status for the live-tool workflow variant.

| Model class | Provider | Model name | Condition | Run folder | Status | Score | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- |
| frontier coding | OpenAI | gpt-4.1 | baseline | `docs/benchmarks/pilots/BP004/runs/2026-03-13-openai-run01` | scored | 8/10 | Strong proxy-materialized baseline with complete draft file set |
| frontier coding | OpenAI | gpt-4.1 | taught | `docs/benchmarks/pilots/BP004/runs/2026-03-13-openai-run01` | scored | 10/10 | Stronger draft-state labeling and safer local artifact packaging |
| alternate multimodal/general | Google | gemini-2.5-flash | baseline | `docs/benchmarks/pilots/BP004/runs/2026-03-13-google-run02` | scored | 9/10 | Clarified rerun: strong baseline with full draft file set including blocker placeholder |
| alternate multimodal/general | Google | gemini-2.5-flash | taught | `docs/benchmarks/pilots/BP004/runs/2026-03-13-google-run02` | scored | 10/10 | Clarified rerun: taught condition regained lead with complete placeholder handling |
| alternate general-purpose | Anthropic | claude-sonnet-4-6 | baseline | `docs/benchmarks/pilots/BP004/runs/2026-03-13-anthropic-run02` | scored | 9/10 | Clarified rerun: strong baseline with complete draft file set |
| alternate general-purpose | Anthropic | claude-sonnet-4-6 | taught | `docs/benchmarks/pilots/BP004/runs/2026-03-13-anthropic-run02` | scored | 10/10 | Clarified rerun: strongest handoff quality and complete placeholder handling |
| smaller coding-capable | xAI | grok-code-fast-1 | baseline |  | blocked-hitl |  | xAI runtime still blocked by `HTTP 403` and provider `error code: 1010` |
| smaller coding-capable | xAI | grok-code-fast-1 | taught |  | blocked-hitl |  | xAI runtime still blocked by `HTTP 403` and provider `error code: 1010` |

## Live-tool question
- Does the taught workflow still improve approval-gate discipline and reviewer handoff quality when the agent must create local draft artifacts rather than only describe them?

## Execution order
1. OpenAI
2. Google
3. Anthropic
4. xAI if access is restored later

## Current interpretation
- OpenAI produced strong BP004 evidence in hosted proxy mode, with the taught condition improving local artifact discipline and handoff quality.
- Under the clarified placeholder-file rule, Google now shows the intended pattern: strong baseline, stronger taught condition.
- Anthropic also now produces a complete BP004 comparison set with a strong taught-condition edge.
- The earlier Google `run01` and Anthropic `run01` results should be treated as pre-clarification or partial evidence, not the stable BP004 comparison set.
