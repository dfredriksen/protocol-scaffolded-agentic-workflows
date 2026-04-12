# BP007 Implementation Phase Plan - Initial Draft

**Repository:** Quantyra-Teaching  
**Follows:** BP006 Architecture Freeze  
**Plan type:** `mixed`

## Context and Framing
BP006 froze the benchmark packet schema, story-driven scaffolding format, run sheet template, decision note convention, and checkpoint cadence. BP007 is the first implementation phase that operates entirely inside those frozen constraints.

## Goal
Implement the first end-to-end teaching cycle under the BP006-frozen architecture, validate that the cycle produces measurable and transferable learning outcomes, and produce a complete artifact set that allows another agent or researcher to rerun the work without original-session context.

## Constraints
- All benchmark packets must conform to the BP006 schema.
- Stories must use the BP006 narrative scaffolding format.
- Run sheets must follow the BP006 template.
- No evaluation metric may be introduced mid-cycle.
- The comparison condition must be defined before any teaching data is collected.

## Required Artifacts
- BP007 benchmark packet set
- story corpus
- run sheet for each session
- decision notes
- checkpoint update files
- pre-registration document
- comparison condition specification
- phase closeout scorecard

## Dependencies
- BP006 freeze document must remain authoritative.
- Reused benchmark packets must be versioned explicitly.
- Story corpus must be complete before the first session opens.
- Evaluation metrics must be computable from retained artifacts alone.

## Validation Checkpoints
- pre-registration complete
- artifact schema compliance
- mid-cycle learning signal review
- transfer probe administration
- closeout scorecard filed

## Rollback and Fallback
- Roll back to BP006 artifact templates if schema compliance fails.
- Reduce session count or increase story density if learning signal is absent.
- Treat transfer contamination as a pilot-only failure and rerun with clean probes.

This draft is structured and repo-aware, but it still describes a broader teaching-cycle workflow rather than the narrow BP007 benchmark execution task.
