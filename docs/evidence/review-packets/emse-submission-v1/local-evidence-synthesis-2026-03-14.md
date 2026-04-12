# Local Evidence Synthesis 2026-03-14

## Purpose
Summarize the current local-model evidence surface without collapsing together distinct local branches that answer different questions.

## Scope
- open-weight BP001 planning comparison
- BP007B verifier-backed local planning branch
- BP008 workflow-task local branch

## Local evidence ladder
| Surface | Strongest retained result | What it shows | Main limitation |
| --- | --- | --- | --- |
| Open-weight BP001 | `llama3.1:8b`, `llama3.2:3b`, and `qwen2.5:3b` each reach `6/10` taught | teaching helps weaker local models structurally on planning | absolute planning fidelity remains mixed |
| BP007B planning with verifier-backed review | `T07` `llama3.2:3b` + `gpt-4.1` at `4/10` to `4/10`, `pass-core` | false-positive review can be eliminated on planning | better review did not rescue weak planning quality |
| BP008 workflow quality-bar | `W01` `llama3.2:3b` + `gpt-4.1` at `4/10` to `5/10`, `pass-core`; `W03` `llama3.2:3b` + `qwen2.5-coder:3b` at `2/10` to `4/10`, `pass-core` | concrete workflow tasks preserve more local-model value and support a real all-local fallback mode | all-local review remains softer and lower quality than hosted review |

## Main findings
- The repo now has three distinct local findings, not one:
  - local planning models can improve structurally under teaching
  - verifier-backed planning review prevents false positives but does not by itself create strong local planning outcomes
  - concrete workflow tasks are currently the best local surface for protocol-plus-review gains
- Task family matters before reviewer quality can help. The same local executor behaves more usefully on workflow artifacts than on abstract repo-grounded planning.
- The strongest current local model is still `llama3.2:3b` in practical terms:
  - strongest small-model comparison point on BP001
  - only local executor to reach `pass-core` under verifier-backed planning
  - strongest hosted-review and all-local points on BP008
- The first real all-local resilience result now exists, but it should be described carefully:
  - the all-local workflow lane preserves part of the gain
  - it does not match hosted-review quality

## Claim discipline
- Defensible local claim today:
  - protocol teaching and review loops can improve local open-weight models, especially on concrete workflow artifact tasks
- Not yet defensible:
  - local models can reliably reach publication-grade planning quality
  - all-local review matches hosted-review quality
  - current local lanes are ready to replace hosted-model evaluation

## Program implications
- Local expansion should favor BP008-style workflow tasks over BP007B-style planning tasks.
- Planning-heavy local work should be treated as diagnostic unless a stronger local planning model family is introduced.
- The local branch is now strong enough to support a resilience argument, but not strong enough to stand alone as the main evidence base.

## Recommended next step
- Keep hosted evidence as the primary publication surface.
- Treat BP008 as the primary local follow-on surface if local work continues.
- Use the local branch to support a resilience and fallback argument alongside the hosted matrix, not instead of it.
