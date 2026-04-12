# BP002 vs BP003 Hosted Comparison - 2026-03-13

## Purpose
Compare the original structured-workflow packet (BP002) against the harder tool-mediated workflow packet (BP003) for the hosted providers that completed both runs.

## Completed providers
- OpenAI `gpt-4.1`
- Google `gemini-2.5-flash`
- Anthropic `claude-sonnet-4-6`

## Score comparison
| Provider | BP002 baseline | BP002 taught | BP003 baseline | BP003 taught | Main takeaway |
| --- | --- | --- | --- | --- | --- |
| OpenAI | `5/10` | `9/10` | `8/10` | `10/10` | BP003 raised baseline quality but still preserved a meaningful taught advantage through stronger handoff and approval-gate discipline |
| Google | `8/10` | `9/10` | `8/10` | `10/10` | BP003 preserved the already-strong baseline while widening the taught-condition gain relative to BP002 |
| Anthropic | `8/10` | `9/10` | `8/10` | `10/10` | BP003 widened the taught-condition gain relative to BP002, mainly through cleaner final packaging and stronger handoff completion |

## Interpretation
- BP003 appears to reduce one BP002 weakness: the taught condition now gains more from improved draft-state separation and reviewer handoff quality, not just formal stop-condition wording.
- OpenAI still shows a clear within-model teaching effect on the harder workflow packet.
- Google is the clearest evidence that BP003 reduced the BP002 ceiling effect: the baseline remained strong, but the taught condition still opened a larger scoring gap.
- Anthropic now shows the same direction of change: the baseline remained strong, but the taught condition completed the packet more cleanly and widened the workflow delta relative to BP002.

## Remaining limitation
- All BP003 scores still remain `L0` same-operator evidence and should eventually be checked under `L2` review.

## Next action
- Fold BP003 into the hosted synthesis and then prioritize `L2` review or the low-parameter uplift lane.
