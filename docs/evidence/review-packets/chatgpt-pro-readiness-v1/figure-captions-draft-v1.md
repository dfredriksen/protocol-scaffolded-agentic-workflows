# Figure Captions Draft V1

## Purpose
Provide manuscript-ready draft captions for the planned figures while keeping the current evidence posture explicit. These captions are draft-only until `L2` review status is integrated.

## Figure 1. Teaching Methodology Flow

**Caption draft**
The teaching methodology operationalized in this repo moves from episode capture to protocol externalization, then to benchmark packet instantiation, retained run collection, scoring, and cross-run synthesis. The key design choice is that "teaching" is treated as an explicit reusable artifact rather than a one-off prompt improvement. This allows the same lesson to be replayed across models, benchmark families, and review configurations. The figure summarizes the path used throughout the current program: teaching episode -> protocol artifact -> benchmark packet -> retained outputs -> scored comparison -> synthesis memo.

**Supporting assets**
- `docs/process/teaching-episode-protocol.md`
- `docs/process/planning-protocol.md`
- `docs/process/benchmark-evaluation-protocol.md`
- `docs/evidence/manuscript-draft-v1.md`

**Current caveat**
- The current evidence captures protocol-following effects under explicit taught conditions; it does not yet isolate a separate controller or compiler layer.

## Figure 2. Hosted Versus Local Evidence Layers

**Caption draft**
The current evidence base is intentionally split into two layers. The hosted layer is the primary publication surface and contains repeated within-model uplift across OpenAI, Google, and Anthropic on planning and workflow benchmark families. The local layer is a secondary resilience surface and contains mixed but positive protocol-plus-review effects on open-weight models, with the strongest retained results on concrete workflow artifact tasks rather than abstract planning tasks. The figure should visually emphasize that the local branch supports bounded fallback claims, not replacement-quality parity.

**Supporting assets**
- `docs/benchmarks/cross-provider-synthesis-2026-03-13.md`
- `docs/benchmarks/local-evidence-synthesis-2026-03-14.md`
- `docs/decisions/D005-publication-position-post-local-branch.md`
- `docs/evidence/manuscript-claim-matrix-v1.md`

**Current caveat**
- The hosted layer remains mostly `L0/L1` pending `L2`, and the local layer is additionally constrained by softer all-local review and hardware/runtime limits.

## Figure 3. BP006 Architecture Outcomes

**Caption draft**
Mixture-of-experts outcomes depend on both executor strength and reviewer quality. In the current BP006 retained set, stronger executors paired with strong reviewers tend to benefit most from correction, while weaker executors paired with stronger reviewers tend to benefit more from takeover. Weak review can eliminate the advantage entirely. The figure should highlight three distinct architectural outcomes: correction wins, takeover wins, and no-gain cases. It should also separate hosted-hosted, hybrid, and all-local pair types so the resilience implications remain visible.

**Supporting assets**
- `docs/benchmarks/bp006-cross-pair-synthesis-2026-03-14.md`
- `docs/benchmarks/bp006-resilience-comparison-2026-03-14.md`
- `docs/evidence/manuscript-tables-v1.md`
- `docs/evidence/manuscript-claim-matrix-v1.md`

**Current caveat**
- The exhaustive BP006 matrix is not yet complete, so this figure should be described as a synthesis of the retained strategic pairs rather than a full combinatorial result.

## Usage note
These captions are intended to accelerate manuscript drafting and visual production. They should be updated once `L2` review is complete and any final figure encodings are chosen.
