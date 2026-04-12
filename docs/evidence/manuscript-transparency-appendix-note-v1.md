# Manuscript Transparency Appendix Note v1

Date: 2026-03-15  
Scope: manuscript-facing appendix plan for run accounting, retained-selection logic, and reporting transparency

## Purpose

This note converts the journal-remediation transparency work into a manuscript-facing appendix plan. It is not meant to replace the existing internal memos. It is meant to define the external-facing appendix structure that should accompany the journal submission.

## Appendix Sections To Add

### Appendix A. Experimental Conditions

This section should define:

- baseline versus taught conditions
- correction versus takeover conditions
- quality-bar loop conditions
- `pass-core`, `pass-stretch`, `fail-cap`, and `blocked`

It should also restate clearly that the main taught conditions supply reusable protocol artifacts directly.

### Appendix B. Run Accounting

This section should report, at minimum:

- the hosted branch families used in the main manuscript spine
- the open-weight BP001 model set
- the BP006 matrix size and currently completed subset
- the BP007B indexed run set
- the BP008 indexed run set

The goal is to show the branch-level run universe rather than only the narrative synthesis subset.

### Appendix C. Retained And Superseded Logic

This section should define:

- what `current evidence-bearing run` means
- when a run is superseded by a clarified rerun
- how blocked or invalid runs remain in the audit trail
- why some exploratory branches use non-exhaustive pair subsets

This section should avoid relying on the bare word `retained` without explanation.

### Appendix D. Reviewer And Scoring Procedure

This section should report:

- scoring level for each evidence family
- current dependence on `L0/L1`
- the role of hosted `L2`
- disagreement handling once `L2` exists

### Appendix E. Local Runtime Constraints

This section should summarize:

- local hardware constraints
- one-model-at-a-time storage discipline
- runtime-profile issues that affected local execution

This is important because local behavior and local ceilings are partly shaped by runtime conditions.

## Why This Appendix Matters

Without an appendix structure like this, the manuscript risks:

- sounding curated rather than fully accounted for
- underreporting replacement and rerun logic
- leaving methods detail in internal memos instead of submission-facing artifacts

## Current Recommendation

The manuscript body should stay focused on the hosted empirical spine and bounded local resilience results. The appendix should carry the fuller run-accounting, retained-selection, and reporting detail needed for journal scrutiny.
