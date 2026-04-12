# Figure Review Memo V1

## Purpose
Record the current review status of the draft manuscript figures and identify the remaining polish steps before they should be used in an internal paper packet or later external draft.

## Current figure package

The figure package now includes:
- Mermaid source files under `docs/evidence/figures`
- draft `.svg` exports for all three planned figures
- draft captions in `docs/evidence/figure-captions-draft-v1.md`
- production constraints in `docs/evidence/figure-production-brief-v1.md`

## Figure-by-figure status

### Figure 1. Teaching Methodology Flow
- status: structurally ready
- strengths:
  - clearly shows the episode-to-protocol-to-benchmark pipeline
  - matches the repo's teaching definition
  - does not overclaim controller separation
- remaining polish:
  - consider visual emphasis on protocol artifact as the key translation step
  - consider a small note marking retained outputs as the auditability anchor

### Figure 2. Hosted Versus Local Evidence Layers
- status: structurally ready
- strengths:
  - cleanly encodes hosted primary evidence versus local resilience evidence
  - keeps `L2` visible as a pending gate
  - matches the manuscript's two-layer posture
- remaining polish:
  - consider a stronger visual separation between "primary publication surface" and "bounded resilience surface"
  - consider adding small benchmark-family labels directly in the rendered figure if readability remains good

### Figure 3. BP006 Architecture Outcomes
- status: informative but likely needs the most visual refinement
- strengths:
  - captures correction, takeover, and weak/no-gain groupings
  - reflects the retained strategic pairs correctly
  - preserves the key architecture conclusion that reviewer quality matters
- remaining polish:
  - consider stronger grouping cues so hosted-hosted, hybrid, and local-local examples are easier to distinguish
  - consider whether the pair labels should be slightly shorter in the final polished figure

## Cross-asset consistency check

### Consistent with manuscript draft
- yes: the figures match the hosted-primary and local-secondary posture
- yes: the figures do not claim `L2` is complete
- yes: the BP006 figure matches the current architecture interpretation

### Consistent with claim matrix
- yes: Figure 1 supports the protocol-externalization framing
- yes: Figure 2 supports the hosted-versus-local evidence posture
- yes: Figure 3 supports the executor-strength and reviewer-quality interaction claim

### Consistent with tables
- yes: no contradictory score values were introduced during figure generation
- yes: BP006 example pairs match Table 3 in `docs/evidence/manuscript-tables-v1.md`

## Recommended next visual step

The current figures are strong enough for:
- internal CRO review
- internal manuscript packet assembly
- design polish before `L2`

The next best step is not new figure logic. It is light visual cleanup:
1. shorten any crowded labels in Figure 3
2. improve emphasis hierarchy in Figure 2
3. keep Figure 1 simple and audit-oriented

## Current limitation

These figures are still draft pre-`L2` visuals. They should not be treated as final publication figures until the manuscript claim language and the `L2` status are integrated together.
