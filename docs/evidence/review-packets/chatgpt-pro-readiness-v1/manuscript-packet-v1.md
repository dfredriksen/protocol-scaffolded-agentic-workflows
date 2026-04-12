# Manuscript Packet V1

## Purpose
Assemble the current manuscript-facing assets into a single review packet for internal circulation before `L2` integration.

## Packet posture

This packet is appropriate for:
- CRO review
- internal publication-strategy review
- internal disclosure and IP review
- editorial review before distinct-evaluator integration

This packet is not yet appropriate for:
- final external submission
- strong publication-grade claims that imply evaluator independence is already resolved

## Included core manuscript assets

### Paper text
- `docs/evidence/manuscript-outline-v1.md`
- `docs/evidence/manuscript-draft-v1.md`
- `docs/evidence/manuscript-revision-memo-v1.md`

### Claims and tables
- `docs/evidence/manuscript-claim-matrix-v1.md`
- `docs/evidence/manuscript-tables-v1.md`

### Figures and visual guidance
- `docs/evidence/figure-captions-draft-v1.md`
- `docs/evidence/figure-production-brief-v1.md`
- `docs/evidence/figure-review-memo-v1.md`
- `docs/evidence/figures/figure-1-teaching-methodology-flow.svg`
- `docs/evidence/figures/figure-2-hosted-vs-local-evidence-layers.svg`
- `docs/evidence/figures/figure-3-bp006-architecture-outcomes.svg`

### Review scaffold
- `docs/evidence/internal-manuscript-review-checklist-v1.md`
- `docs/evidence/internal-manuscript-review-memo-v1.md`
- `docs/evidence/l2-manuscript-integration-note-v1.md`
- `docs/evidence/l2-manuscript-update-tracker-v1.md`
- `docs/benchmarks/l2-hosted-execution-bundle-v1.md`
- `docs/hitl/H007-l2-review-kickoff-note.md`

## Evidence spine behind the packet

### Hosted primary evidence
- `docs/benchmarks/cross-provider-synthesis-2026-03-13.md`
- `docs/decisions/D002-evidence-readiness-gate-post-hosted-matrix.md`

### Local resilience evidence
- `docs/benchmarks/local-evidence-synthesis-2026-03-14.md`
- `docs/decisions/D003-local-branch-selection-post-bp008.md`
- `docs/decisions/D004-local-evidence-readiness-post-bp008.md`
- `docs/decisions/D005-publication-position-post-local-branch.md`

### Architecture evidence
- `docs/benchmarks/bp006-cross-pair-synthesis-2026-03-14.md`
- `docs/benchmarks/bp006-resilience-comparison-2026-03-14.md`

## Current packet message

The current paper package supports a disciplined two-layer claim:
- primary claim: hosted protocol teaching produces repeated within-model uplift across planning and workflow tasks
- secondary claim: local protocol-plus-review loops provide bounded resilience benefits, especially on concrete workflow artifact tasks

The current packet should keep repeating two constraints:
- evaluator independence still depends on `L2`
- local evidence is resilience evidence, not replacement-quality parity

## Recommended review sequence

1. read `manuscript-draft-v1.md`
2. check `manuscript-claim-matrix-v1.md` against the draft
3. review `manuscript-tables-v1.md`
4. review the three figure `.svg` files with `figure-captions-draft-v1.md`
5. use `manuscript-revision-memo-v1.md` to target the next edits
6. record internal comments using `internal-manuscript-review-checklist-v1.md`
7. review the recorded outcome in `internal-manuscript-review-memo-v1.md`

## Open gate before external use

The main unresolved gate is still `L2` distinct-evaluator review. The packet is intentionally built so that `L2` updates can be inserted into:
- manuscript results language
- table summaries
- claim matrix
- figure captions

Use `docs/evidence/l2-manuscript-integration-note-v1.md` as the ordered update guide once hosted `L2` results exist.
Use `docs/evidence/l2-manuscript-update-tracker-v1.md` to record the actual downstream edits once those results arrive.

## Recommended next step

The next protocol move should be one of:
1. execute `L2` and fold the results into the packet, or
2. perform final internal editorial review using this packet as the single manuscript handoff artifact
