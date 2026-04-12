# Hosted Cross-Provider Synthesis - 2026-03-13

## Purpose
Summarize the first hosted cross-model matrix without collapsing the result into a raw provider leaderboard.

## Scope
- Providers included:
  - OpenAI `gpt-4.1`
  - Google `gemini-2.5-flash`
  - Anthropic `claude-sonnet-4-6`
- Benchmark families:
  - BP001 planning-loop pilot
  - BP002 structured-workflow pilot
  - BP003 tool-mediated workflow pilot

## Within-model uplift summary
| Provider | Model | BP001 baseline | BP001 taught | BP002 baseline | BP002 taught | BP003 baseline | BP003 taught | Main pattern |
| --- | --- | --- | --- | --- | --- | --- |
| OpenAI | `gpt-4.1` | `3/10` | `9/10` | `5/10` | `9/10` | `8/10` | `10/10` | Large uplift on planning and repeated workflow uplift, with stronger BP003 packaging gains |
| Google | `gemini-2.5-flash` | `3/10` | `7/10` | `8/10` | `9/10` | `8/10` | `10/10` | Structural uplift on planning and clearer workflow gain once the packet got harder |
| Anthropic | `claude-sonnet-4-6` | `1/10` | `8/10` | `8/10` | `9/10` | `8/10` | `10/10` | Large rescue effect on planning and clearer BP003 workflow uplift despite strong baselines |

## Main findings
- The taught protocol improved within-model outcomes for every hosted provider on all three completed benchmark families.
- The strongest and cleanest repeated uplift was on OpenAI, where both planning and workflow baselines were materially weaker than the taught condition.
- Google showed the clearest evidence that structural protocol adherence can improve without fully solving task-fidelity drift on planning tasks.
- Anthropic showed the sharpest rescue effect on BP001, while BP003 showed that even a strong workflow baseline could still be improved through cleaner package-state handling and handoff completion.
- BP003 widened the workflow delta relative to BP002 across all hosted providers, suggesting the harder packet reduced ceiling effects.
- The BP003 transfer variant preserved the same workflow uplift pattern across all three hosted providers, which is the strongest current evidence that the workflow protocol generalized beyond one packet framing.
- BP004 added higher realism through proxy-materialized local artifact creation. After clarifying the blocker-placeholder-file rule, OpenAI, Google, and Anthropic all showed a taught-condition edge on the stable comparison set.

## Interpretation
- The current evidence supports a cross-provider teaching effect, but the effect is not uniform.
- BP001 appears more diagnostic of teaching impact because weaker planning baselines leave more room for protocol lift.
- BP002 currently mixes two phenomena:
  - true protocol uplift for weaker workflow baselines
  - ceiling effects when the baseline model already halts and validates correctly
- BP003 helps separate those cases by rewarding stronger draft-state separation, approval-gate accounting, and reviewer handoff quality.

## Cross-provider cautions
- All scores remain `L0/L1` evidence; there is no distinct evaluator yet.
- The taught condition embeds the protocol directly, so part of the measured gain is explicitly a protocol-following test.
- Provider affordances differ, and some model families may need harder workflow packets to avoid ceiling effects.
- BP001 results for Google and Anthropic show that structure gains do not guarantee task-fidelity gains.
- Anthropic BP003 required derived final summaries because the raw outputs did not emit a separate artifact-retention heading cleanly.
- BP004 runs are hosted proxy executions, not native filesystem tool sessions.
- Early BP004 results exposed a benchmark-design ambiguity around blocker-placeholder files, but the clarified reruns resolved that ambiguity for the current hosted comparison set.

## Publication-relevant takeaways
- The repo now has initial hosted evidence that protocol teaching can improve agentic benchmark outcomes across multiple providers, not just a single model.
- The repo now has stronger hosted workflow evidence because BP003 reduced the risk that BP002 was too easy for disciplined baselines.
- The repo also now has adjacent-domain transfer evidence for the harder workflow packet, not just a one-task result.
- The repo now also has an initial higher-realism workflow slice with a clarified scoring rule, though it still remains proxy-materialized rather than native tool use.
- The most defensible claim today is within-model uplift across providers, not absolute provider superiority.
- A stronger publication-grade claim will require:
  - `L2` distinct-evaluator review
  - extension into lower-parameter or open-weight lanes
  - either a live-tool variant of BP003 or another higher-realism workflow packet that preserves the same gate structure

## Next actions
- Run `L2` review on the hosted matrix.
- Run `L2` review on the hosted matrix, including the clarified BP004 comparison set.
- Expand into the low-parameter uplift lane once the hosted review pass is frozen.
