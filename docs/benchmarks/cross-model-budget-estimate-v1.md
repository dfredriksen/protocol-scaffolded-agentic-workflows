# Cross-Model Budget Estimate V1

## Purpose
Estimate a practical initial budget for the compact cross-model benchmark matrix and distinguish API-model costs from open-weight inference costs.

## Budgeting assumptions
- Initial compact matrix:
  - 3 model classes
  - 2 benchmark families
  - 2 conditions
  - minimum 12 retained runs before transfer variants
- Early runs are mostly text-only and use modest context.
- The main cost driver is reruns, evaluation passes, and setup friction rather than raw token volume.

## Official pricing references
- OpenAI pricing: `gpt-4.1` is currently listed at about `$2 / 1M input tokens` and `$8 / 1M output tokens`.
  - Source: `https://platform.openai.com/docs/pricing`
- Anthropic pricing: Claude Sonnet pricing is currently about `$3 / 1M input tokens` and `$15 / 1M output tokens`.
  - Source: `https://www.anthropic.com/pricing`
- Google pricing: Gemini 2.5 Flash is currently about `$0.30 / 1M input tokens` and `$2.50 / 1M output tokens`; Flash-Lite is cheaper.
  - Source: `https://ai.google.dev/pricing`
- xAI pricing: Grok 4.1 Fast is currently about `$0.20 / 1M input tokens` and `$0.50 / 1M output tokens`, with separate agent-tool pricing if those tools are used.
  - Source: `https://x.ai/news/grok-4-1-fast/`

## Per-model allocation guidance
- OpenAI frontier model
  - Recommended initial allocation: `$20`
  - Why: highest-value frontier comparison path and likely modest total token use, but allow room for reruns and tool-heavy expansion.
- xAI coding-capable model
  - Recommended initial allocation: `$8`
  - Why: low token cost and already provisionally accessible in the local environment.
- xAI general-purpose model
  - Recommended initial allocation: `$7`
  - Why: similar low token cost; pair with the coding-capable path for intra-provider contrast.
- Anthropic alternate path
  - Recommended reserve allocation: `$20`
  - Why: useful substitute if OpenAI is unavailable, but not worth funding first until access is confirmed.
- Google alternate path
  - Recommended reserve allocation: `$10`
  - Why: low-cost fallback if a second non-xAI provider is needed.

## Recommended budget envelopes
- Minimum workable budget: `$35`
  - xAI pair plus a small contingency
- Practical benchmark budget: `$65`
  - xAI pair plus one frontier provider path
- Low-friction budget: `$100`
  - includes reruns, transfer runs, and one alternate provider fallback

## Open-weight model budgeting
Open-weight models should not be budgeted the same way as API models because cost depends on where inference runs.

### If run locally
- Budget categories are:
  - GPU availability
  - VRAM fit
  - local power/time cost
  - operator setup time
- Direct token cost may be near zero, but execution time and engineering friction can be substantial.

### If run on a hosted inference provider
- Budget categories are:
  - per-token charges, or
  - per-minute / per-hour GPU charges
- The benchmark should log the host and billing mode because this affects reproducibility.

## Recommended open-weight role
- Use one open-weight model as an exploratory fourth class only after the three-class compact matrix is stable.
- Prefer an instruct-tuned coding-capable model that can plausibly run on available local or hosted hardware.
- Do not let open-weight setup delay the first cross-model matrix.

## Suggested open-weight budget placeholder
- If local hardware is already available: allocate `$0-$10` incremental cash and track setup time separately.
- If hosted inference is required: allocate `$20-$40` as an initial exploratory budget until the exact host and model are chosen.

## Budget recommendation
1. Fund xAI first because it appears provisionally accessible now.
2. Fund OpenAI next because `gpt-4.1` is the preferred frontier benchmark path.
3. Keep Anthropic or Google as reserve options until access is confirmed.
4. Treat open-weight work as a separate exploratory branch, not part of the initial required matrix.

## Current caveats
- The local inventory is stronger for xAI than for other providers.
- Anthropic and Google model names in the local registry may lag the newest families.
- Open-weight costs cannot be estimated precisely until the runtime path is chosen.
