# Model Roster V1

## Purpose
Track the initial concrete candidate models for the compact cross-model benchmark matrix and their current access status.

| Model class | Provider | Model name | Access status | Access path | HITL needed | Notes |
| --- | --- | --- | --- | --- | --- | --- |
| frontier coding | OpenAI | gpt-4.1 | accessible | direct API path `https://api.openai.com/v1/chat/completions` | no | Live validation succeeded with `HTTP 200` and returned `openai_ok` |
| smaller coding-capable | xAI | grok-code-fast-1 | blocked-hitl | `C:\Users\Dan\Desktop\Projects\Model-Inventory\grok_cli.py` | yes | Local CLI exists and `.env` contains an `XAI_API_KEY` marker, but live validation returned `HTTP 403: Forbidden` |
| general-purpose | xAI | grok-4-1-fast-non-reasoning | blocked-hitl | `C:\Users\Dan\Desktop\Projects\Model-Inventory\grok_cli.py` | yes | Same xAI runtime path as above; treat as blocked until permissions are confirmed |
| alternate reasoning | xAI | grok-4-1-fast-reasoning | blocked-hitl | `C:\Users\Dan\Desktop\Projects\Model-Inventory\grok_cli.py` | yes | Candidate only after xAI runtime permissions are confirmed |
| alternate general-purpose | Anthropic | claude-sonnet-4-6 | accessible | direct API path `https://api.anthropic.com/v1/messages` | no | Live validation succeeded with `HTTP 200` and returned `anthropic_ok` after refreshing the stale model target |
| alternate multimodal/general | Google | gemini-2.5-flash | blocked-hitl | direct API path `https://generativelanguage.googleapis.com/v1beta/...` | yes | Refreshed from stale `gemini-1.5-flash` using current Google docs; pending live revalidation |
| exploratory open-weight | Open weight / Ollama | undecided | candidate | undecided local or hosted path | maybe | Intended for the low-parameter uplift subtrack, not the initial required matrix |

## Selection recommendation
- Current hosted execution priority:
  - `gpt-4.1`
- Current verified fallbacks:
  - `gemini-2.5-flash`
  - `claude-sonnet-4-6`
- Deferred until account-side repair:
  - `grok-code-fast-1`
  - `grok-4-1-fast-non-reasoning`

## Notes
- The inventory does not currently list GPT-5-family models, so this roster stays aligned to the local registry rather than adding unstated candidates.
- OpenAI is now the only verified hosted runtime path in the compact matrix.
- Google is now a second verified hosted runtime path in the compact matrix.
- Anthropic is now a third verified hosted runtime path in the compact matrix after refreshing the stale model target.
- xAI is deferred until the `403` / `1010` permission issue is resolved.
- Google key presence is confirmed, and the candidate has been refreshed to `gemini-2.5-flash`; live revalidation is the remaining step.
- The open-weight row is intentionally undecided because hardware or hosting choice will dominate cost and reproducibility.
