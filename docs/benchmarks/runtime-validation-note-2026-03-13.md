# Runtime Validation Note - 2026-03-13

## Purpose
Record the first concrete provider-runtime validation attempts for the cross-model benchmark plan.

## xAI validation attempt
- Runtime path:
  - `C:\Users\Dan\Desktop\Projects\Model-Inventory\grok_cli.py`
- Validation prompt:
  - `Reply with exactly: xai_ok`
- Result:
  - failed with `HTTP 403: Forbidden`
  - provider body included `error code: 1010`

## xAI multi-model validation attempt
- Validation command:
  - `python scripts/validate_xai_runtime.py`
- Configured base:
  - `https://api.x.ai/v1`
- Tested models:
  - `grok-4-1-fast-reasoning`
  - `grok-4-1-fast-non-reasoning`
  - `grok-code-fast-1`
- Result:
  - all tested models failed with `HTTP 403 Forbidden | error code: 1010`

## Interpretation
- The repository contains a usable xAI CLI path and an `XAI_API_KEY` marker in the local `.env`.
- However, benchmark execution is not yet verified because the current live call was rejected by the provider.
- Because multiple xAI models fail on the standard API base, the blocker is more likely account authorization, billing, or endpoint-level permission than a single bad model choice.

## Operational implication
- xAI should move from provisional `accessible` to `blocked-hitl` until the permission or billing issue is resolved.
- The compact hosted matrix is now blocked on both:
  - OpenAI frontier access confirmation
  - xAI permission confirmation

## Next actions
- use `docs/hitl/H004-xai-runtime-permission-packet.md`
- keep the xAI rows visible in the run sheet as blocked, not ready
- use `python scripts/validate_xai_runtime.py` to probe the configured xAI base and multiple candidate models without exposing secrets

## OpenAI validation attempt
- Validation path:
  - direct API call to `https://api.openai.com/v1/chat/completions`
- Model:
  - `gpt-4.1`
- Validation prompt:
  - `Reply with exactly: openai_ok`
- Result:
  - succeeded with `HTTP 200`
  - returned content `openai_ok`
  - resolved model `gpt-4.1-2025-04-14`

## Updated operational implication
- OpenAI is now the verified hosted frontier path for the compact matrix.
- xAI remains blocked and should be treated as deferred for the current hosted phase unless account-side access is fixed later.

## Anthropic validation attempt
- Validation path:
  - direct API call to `https://api.anthropic.com/v1/messages`
- Model:
  - `claude-3-5-sonnet`
- Validation prompt:
  - `Reply with exactly: anthropic_ok`
- Result:
  - failed with `HTTP 400`
  - provider message: `Your credit balance is too low to access the Anthropic API. Please go to Plans & Billing to upgrade or purchase credits.`

## Additional operational implication
- Anthropic key presence is confirmed, and the API path is reachable.
- Anthropic remains `blocked-hitl` for benchmarking until account credits are added.

## Anthropic model refresh and revalidation
- The older Anthropic model target `claude-3-5-sonnet` is stale.
- Current Anthropic docs use the Sonnet model ID `claude-sonnet-4-6`.
- Revalidation path:
  - direct API call to `https://api.anthropic.com/v1/messages`
- Model:
  - `claude-sonnet-4-6`
- Validation prompt:
  - `Reply with exactly: anthropic_ok`
- Result:
  - succeeded with `HTTP 200`
  - returned text `anthropic_ok`
  - resolved model `claude-sonnet-4-6`

## Final Anthropic operational implication
- Anthropic is now a verified hosted fallback path for the compact matrix.

## Google validation attempt
- Validation path:
  - direct API call to `https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent`
- Model:
  - `gemini-1.5-flash`
- Validation prompt:
  - `Reply with exactly: gemini_ok`
- Result:
  - failed with `HTTP 404`
  - provider message: `models/gemini-1.5-flash is not found for API version v1beta, or is not supported for generateContent`

## Additional operational implication
- Google key presence is confirmed, and the API path is reachable.
- The current blocker is likely a stale model/version selection in the local inventory rather than missing credentials.
- Google should remain `blocked-hitl` until the candidate model name is refreshed and revalidated.

## Google model refresh
- Current official Google Gemini docs list the stable Flash model code as `gemini-2.5-flash`.
- Source:
  - `https://ai.google.dev/gemini-api/docs/models`
  - `https://ai.google.dev/api`
- Next validation target:
  - `https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent`
