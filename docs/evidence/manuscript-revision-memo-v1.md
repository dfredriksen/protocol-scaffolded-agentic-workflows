# Manuscript Revision Memo V1

## Purpose
Record the current state of the manuscript package, identify what is already stable enough for internal circulation, and define the highest-value revisions that should happen before broader external use.

## Current package status

The manuscript package now contains:
- `docs/evidence/manuscript-outline-v1.md`
- `docs/evidence/manuscript-draft-v1.md`
- `docs/evidence/manuscript-tables-v1.md`
- `docs/evidence/manuscript-claim-matrix-v1.md`
- `docs/evidence/figure-captions-draft-v1.md`

Together, these assets are now sufficient for:
- internal review of the paper structure and claim discipline
- disclosure and IP posture review
- preparation for later `L2` integration

They are not yet sufficient for a publication-grade external submission because evaluator independence remains the primary unresolved gate.

## What is already stable

### Stable manuscript posture
- hosted evidence is the primary quantitative surface
- local evidence is a bounded resilience surface
- the current paper should not imply local replacement-quality parity
- `L2` review remains the main publication-grade gate

### Stable results framing
- hosted within-model uplift across providers is the main result spine
- harder workflow packets strengthen the workflow claim beyond the earlier ceiling-limited packets
- BP006 already supports a real architecture result around correction versus takeover
- BP008 is the strongest local branch and the correct local branch to foreground

### Stable limits language
- operator-side scoring remains the strongest validity threat
- protocol-following is currently tested more directly than controller separation
- some workflow evidence is still proxy-materialized
- local hardware/runtime constraints materially bound the resilience branch

## What should be revised next

### Revision 1. Tighten the abstract around the two-layer evidence posture
The abstract is already directionally correct, but it should more explicitly separate:
- hosted primary evidence
- local secondary resilience evidence
- pending `L2` gate

The current abstract does this implicitly, but a sharper three-sentence structure would make the paper easier to evaluate quickly.

### Revision 2. Add explicit artifact references or run-family references inside Results sections
The manuscript draft currently reads well, but some result paragraphs still rely on narrative summary alone. The next draft should add direct references to:
- `BP001` through `BP004` as the hosted surface
- `BP006` for architecture evidence
- `BP007B` as a negative-but-useful local planning branch
- `BP008` as the positive local workflow branch

### Revision 3. Convert the Discussion into a cleaner claim-versus-limit structure
The discussion is strong conceptually, but it would read more cleanly if reorganized into:
- what the paper can claim now
- what the paper should not claim yet
- why the local branch matters despite weaker ceilings

### Revision 4. Prepare a direct `L2` insertion point
The manuscript should be easy to update once independent review arrives. The easiest way to do that is to reserve explicit insertion language for:
- hosted matrix confirmation or revision after `L2`
- any score adjustments that come from distinct-evaluator review
- whether local branch interpretation changes under independent scoring

## Suggested pre-`L2` edit targets

1. revise the abstract for sharper claim separation
2. add explicit run-family references in Hosted Results and Local Results
3. tighten Discussion into a claim-versus-limit structure
4. add a visible placeholder note for future `L2` integration

## Suggested post-`L2` edit targets

1. update Tables 1 through 4 if any scoring interpretation changes
2. revise figure captions to reflect the independent-review status
3. update the manuscript claim matrix with any strengthened or weakened claims
4. remove any remaining phrasing that still sounds like internal pilot evidence if `L2` confirms the current results

## Current recommendation

The manuscript package is now strong enough for:
- internal CRO review
- internal disclosure review
- figure production
- editorial tightening

The next best use of effort is manuscript refinement plus `L2` readiness, not more benchmark scaffolding.
