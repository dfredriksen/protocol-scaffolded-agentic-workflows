# Cross-Model Run Sheet V1

## Purpose
Track the compact matrix across concrete candidate models, benchmark families, and conditions.

| Model class | Provider | Model name | Benchmark | Condition | Run folder | Status | Score | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| frontier coding | OpenAI | gpt-4.1 | BP001 | baseline | `docs/benchmarks/pilots/BP001/runs/2026-03-13-openai-run01` | scored | 3/10 | Generic baseline plan |
| frontier coding | OpenAI | gpt-4.1 | BP001 | taught | `docs/benchmarks/pilots/BP001/runs/2026-03-13-openai-run01` | scored | 9/10 | Strong protocol uplift |
| frontier coding | OpenAI | gpt-4.1 | BP002 | baseline | `docs/benchmarks/pilots/BP002/runs/2026-03-13-openai-run01` | scored | 5/10 | Loose validation and weak stop discipline |
| frontier coding | OpenAI | gpt-4.1 | BP002 | taught | `docs/benchmarks/pilots/BP002/runs/2026-03-13-openai-run01` | scored | 9/10 | Strong workflow-protocol uplift |
| alternate multimodal/general | Google | gemini-2.5-flash | BP001 | baseline | `docs/benchmarks/pilots/BP001/runs/2026-03-13-google-run01` | scored | 3/10 | Generic baseline plan |
| alternate multimodal/general | Google | gemini-2.5-flash | BP001 | taught | `docs/benchmarks/pilots/BP001/runs/2026-03-13-google-run01` | scored | 7/10 | Protocol uplift with task drift |
| alternate multimodal/general | Google | gemini-2.5-flash | BP002 | baseline | `docs/benchmarks/pilots/BP002/runs/2026-03-13-google-run01` | scored | 8/10 | Already-strong baseline workflow discipline |
| alternate multimodal/general | Google | gemini-2.5-flash | BP002 | taught | `docs/benchmarks/pilots/BP002/runs/2026-03-13-google-run01` | scored | 9/10 | Slight uplift over strong baseline |
| alternate general-purpose | Anthropic | claude-sonnet-4-6 | BP001 | baseline | `docs/benchmarks/pilots/BP001/runs/2026-03-13-anthropic-run01` | scored | 1/10 | Hallucinated repo structure and fake tool calls |
| alternate general-purpose | Anthropic | claude-sonnet-4-6 | BP001 | taught | `docs/benchmarks/pilots/BP001/runs/2026-03-13-anthropic-run01` | scored | 8/10 | Strong structure uplift with some semantic drift |
| alternate general-purpose | Anthropic | claude-sonnet-4-6 | BP002 | baseline | `docs/benchmarks/pilots/BP002/runs/2026-03-13-anthropic-run01` | scored | 8/10 | Strong baseline workflow rigor |
| alternate general-purpose | Anthropic | claude-sonnet-4-6 | BP002 | taught | `docs/benchmarks/pilots/BP002/runs/2026-03-13-anthropic-run01` | scored | 9/10 | Slight uplift over strong baseline |
| smaller coding-capable | xAI | grok-code-fast-1 | BP001 | baseline |  | blocked-hitl |  | Local Grok CLI exists but live validation returned `HTTP 403` |
| smaller coding-capable | xAI | grok-code-fast-1 | BP001 | taught |  | blocked-hitl |  | Local Grok CLI exists but live validation returned `HTTP 403` |
| smaller coding-capable | xAI | grok-code-fast-1 | BP002 | baseline |  | blocked-hitl |  | Local Grok CLI exists but live validation returned `HTTP 403` |
| smaller coding-capable | xAI | grok-code-fast-1 | BP002 | taught |  | blocked-hitl |  | Local Grok CLI exists but live validation returned `HTTP 403` |
| general-purpose | xAI | grok-4-1-fast-non-reasoning | BP001 | baseline |  | blocked-hitl |  | Local Grok CLI exists but live validation returned `HTTP 403` |
| general-purpose | xAI | grok-4-1-fast-non-reasoning | BP001 | taught |  | blocked-hitl |  | Local Grok CLI exists but live validation returned `HTTP 403` |
| general-purpose | xAI | grok-4-1-fast-non-reasoning | BP002 | baseline |  | blocked-hitl |  | Local Grok CLI exists but live validation returned `HTTP 403` |
| general-purpose | xAI | grok-4-1-fast-non-reasoning | BP002 | taught |  | blocked-hitl |  | Local Grok CLI exists but live validation returned `HTTP 403` |

## Current interpretation
- The compact matrix is now executable on the OpenAI frontier path.
- The first hosted BP001 slice has been executed for OpenAI and Google.
- Anthropic is now a verified third hosted path using `claude-sonnet-4-6`.
- The Anthropic BP001 slice is now also executed.
- The hosted BP002 slice is now executed for OpenAI, Google, and Anthropic.
- xAI remains blocked and deferred because the live CLI path returned `HTTP 403` with provider `error code: 1010`.
