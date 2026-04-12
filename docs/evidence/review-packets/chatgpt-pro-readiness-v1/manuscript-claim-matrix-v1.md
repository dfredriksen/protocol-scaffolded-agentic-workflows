# Manuscript Claim Matrix V1

## Purpose
Map each manuscript-level claim to the retained evidence that currently supports it, the main caveat that constrains it, and the next gate needed before the claim should be strengthened externally.

## Claim 1. Protocol teaching produces repeated within-model uplift across hosted providers

| Element | Current state |
| --- | --- |
| Claim text | Across hosted providers, explicit taught-protocol conditions repeatedly outperform weaker baseline conditions on planning and workflow benchmark families. |
| Primary evidence | `docs/benchmarks/cross-provider-synthesis-2026-03-13.md` |
| Core retained runs | `BP001` OpenAI, Google, Anthropic run01; `BP002` OpenAI, Google, Anthropic run01; `BP003` OpenAI, Google, Anthropic run01; `BP003` transfer run02 |
| Manuscript table support | `docs/evidence/manuscript-tables-v1.md` Table 1 |
| Main caveat | Evidence is still mostly operator-scored `L0/L1`, not distinct-evaluator `L2`. |
| Next gate | integrate `L2` review before describing the hosted matrix as publication-grade proof rather than strong internal pilot evidence |

## Claim 2. Harder workflow packets reduce ceiling effects and make the protocol effect clearer

| Element | Current state |
| --- | --- |
| Claim text | Workflow benchmarks become more discriminative when they require stronger artifact retention, approval handling, and handoff quality. |
| Primary evidence | `docs/benchmarks/bp002-vs-bp003-hosted-comparison-2026-03-13.md` |
| Core retained runs | `BP002` hosted run01 set; `BP003` hosted run01 set; `BP003` transfer run02 set |
| Manuscript draft support | `docs/evidence/manuscript-draft-v1.md` sections 3 and 6 |
| Main caveat | Some workflow evidence is still proxy-materialized rather than native live-tool execution. |
| Next gate | integrate a clearer live-tool comparison or state the proxy-materialized limitation explicitly in any external draft |

## Claim 3. Mixture-of-experts gains depend on executor strength and reviewer quality

| Element | Current state |
| --- | --- |
| Claim text | Multi-model improvement is architecture-dependent: stronger executors often benefit from correction, weaker executors often benefit from takeover, and weak review can erase the advantage. |
| Primary evidence | `docs/benchmarks/bp006-cross-pair-synthesis-2026-03-14.md` |
| Core retained runs | `BP006` P1 through P6 retained runs across hosted-hosted, hybrid, and local-local pairs |
| Manuscript table support | `docs/evidence/manuscript-tables-v1.md` Table 3 |
| Main caveat | The exhaustive BP006 matrix is planned but not complete; current synthesis uses six strategically chosen retained pairs rather than all ordered combinations. |
| Next gate | either complete more of the exhaustive matrix or keep the external claim framed as a current pattern rather than a full architecture law |

## Claim 4. Local open-weight models show bounded resilience effects rather than replacement-quality parity

| Element | Current state |
| --- | --- |
| Claim text | Local models can improve under protocol-plus-review loops, but the gains are narrower, task-dependent, and weaker than the hosted evidence surface. |
| Primary evidence | `docs/benchmarks/local-evidence-synthesis-2026-03-14.md` |
| Core retained runs | open-weight `BP001` runs across five models; `BP007B` T07, T08, T09; `BP008` W01, W02, W03 |
| Manuscript table support | `docs/evidence/manuscript-tables-v1.md` Table 2 |
| Main caveat | Local hardware constraints, softer all-local review, and one-model-at-a-time execution limit how strongly these results should be generalized. |
| Next gate | keep local results in the resilience section unless a stronger local workflow or verifier-backed result materially exceeds current ceilings |

## Claim 5. Concrete workflow tasks are a better local teaching surface than abstract repo-grounded planning

| Element | Current state |
| --- | --- |
| Claim text | For local models, protocol-plus-review loops are more effective on concrete workflow artifact tasks than on abstract planning tasks. |
| Primary evidence | `docs/benchmarks/local-branch-comparison-2026-03-14.md` |
| Core retained runs | `BP007B` verifier-backed planning branch versus `BP008` workflow branch |
| Decision support | `docs/decisions/D003-local-branch-selection-post-bp008.md` and `docs/decisions/D004-local-evidence-readiness-post-bp008.md` |
| Main caveat | This comparison is currently strongest for the `llama3.2:3b` lane and weaker for other local executors. |
| Next gate | add another local workflow executor if we want to claim this as a broader local-model pattern rather than a branch-selection result |

## Claim 6. The current publication posture should treat hosted evidence as primary and local evidence as secondary resilience evidence

| Element | Current state |
| --- | --- |
| Claim text | Hosted evidence is the primary manuscript spine; local evidence should be presented as bounded resilience support, not as a replacement-quality alternative. |
| Primary evidence | `docs/decisions/D005-publication-position-post-local-branch.md` |
| Supporting synthesis | `docs/benchmarks/cross-provider-synthesis-2026-03-13.md` and `docs/benchmarks/local-evidence-synthesis-2026-03-14.md` |
| Manuscript draft support | `docs/evidence/manuscript-draft-v1.md` sections 4, 6, and 8 |
| Main caveat | This posture is partly methodological and partly strategic; it should be revisited if the local branch improves substantially or `L2` materially changes hosted interpretations. |
| Next gate | revisit after `L2` review and after any stronger local follow-on branch |

## Claim 7. The main publication-grade gap is evaluator independence, not lack of pilot evidence

| Element | Current state |
| --- | --- |
| Claim text | The repo already contains substantial pilot evidence; the strongest remaining publication-grade gap is independent review rather than absence of experimental structure. |
| Primary evidence | `docs/process/l2-review-handoff-protocol.md` and `docs/benchmarks/l2-review-packet-hosted-matrix-2026-03-13.md` |
| Supporting decisions | `docs/decisions/D002-evidence-readiness-gate-post-hosted-matrix.md` and `docs/decisions/D004-local-evidence-readiness-post-bp008.md` |
| Manuscript table support | `docs/evidence/manuscript-tables-v1.md` Table 4 |
| Main caveat | The claim should not be overstated into "publication ready now"; the missing `L2` pass is still a real external-validity limitation. |
| Next gate | complete distinct-evaluator scoring and fold that status into the manuscript draft |

## Usage note
This matrix is intended to support manuscript revision, figure caption drafting, and disclosure review. It is not itself a results artifact; it is a traceability layer over the retained evidence base.
