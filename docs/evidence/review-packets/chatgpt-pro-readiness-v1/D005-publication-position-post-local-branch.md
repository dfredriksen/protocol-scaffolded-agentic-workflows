# D005 Publication Position Post Local Branch

## Date
2026-03-14

## Status
Active

## Decision
Present the Teaching program as having two distinct evidence layers:
- a primary hosted publication surface centered on within-model uplift across multiple hosted providers
- a secondary local resilience surface centered on workflow-task improvement and bounded all-local fallback

Do not merge those layers into one undifferentiated performance claim.

## Why
- The hosted matrix is still the strongest evidence base in both quality and breadth.
- The local branch now matters strategically, but its current role is different:
  - it supports resilience and fallback arguments
  - it does not yet support a replacement-quality claim
- The strongest local result depends on workflow-task suitability, not simply on local review matching hosted review.

## External narrative this supports
- Main claim:
  - protocol teaching improves agent behavior across hosted providers on planning and workflow tasks
- Secondary claim:
  - the same methodology shows bounded positive effects on local open-weight models, especially on concrete workflow artifact tasks
- Resilience claim:
  - an all-local fallback path can preserve part of the workflow gain even when hosted review is unavailable

## External narrative this does not support
- local models currently match hosted-model quality
- all-local review is equivalent to hosted review
- the local branch is mature enough to serve as the main publication result set

## Paper-shape implication
- hosted matrix should remain the main quantitative result section
- local evidence should appear as:
  - a resilience/fallback section, or
  - a separate subsection on capability-tier differences
- BP007B should be described as a negative but useful methodological result:
  - stronger review bars alone did not rescue local planning quality
- BP008 should be described as the stronger local branch:
  - concrete workflow tasks yielded the first credible local and all-local gains

## Required next steps
- keep `L2` review as the main gating item for publication-grade claims
- preserve local evidence as a bounded secondary result set
- avoid broadening local claims until either:
  - a stronger local planning family is retained, or
  - a stronger all-local workflow reviewer is retained

## References
- `docs/decisions/D002-evidence-readiness-gate-post-hosted-matrix.md`
- `docs/decisions/D004-local-evidence-readiness-post-bp008.md`
- `docs/benchmarks/cross-provider-synthesis-2026-03-13.md`
- `docs/benchmarks/local-evidence-synthesis-2026-03-14.md`
