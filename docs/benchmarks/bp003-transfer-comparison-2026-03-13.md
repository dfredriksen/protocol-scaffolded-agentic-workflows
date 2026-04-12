# BP003 Transfer Comparison - 2026-03-13

## Purpose
Summarize the hosted BP003 transfer variant across the currently usable providers.

| Provider | Model | Baseline | Taught | Main pattern |
| --- | --- | --- | --- | --- |
| OpenAI | `gpt-4.1` | `8/10` | `10/10` | Strong baseline plus cleaner taught handoff and gate discipline |
| Google | `gemini-2.5-flash` | `8/10` | `10/10` | Strong baseline plus clearer taught packaging and gate accounting |
| Anthropic | `claude-sonnet-4-6` | `8/10` | `10/10` | Strong baseline plus cleaner taught stop-boundary and handoff completion |

## Interpretation
- The BP003 taught workflow appears to transfer cleanly into the internal-release domain across all three hosted providers.
- The transfer variant preserves the same within-model improvement pattern seen on BP003 v1.
- This is still `L0` same-operator evidence and should eventually be reviewed under `L2`.
