# Manuscript Supplement Structure V1

Date: 2026-03-15  
Target venue: `Empirical Software Engineering`

## Purpose

Define the external-facing supplement or appendix structure that should accompany the journal submission.

## Recommended Structure

### Supplement A. Benchmark Condition Definitions

Include:

- baseline condition definition
- taught condition definition
- correction and takeover condition definitions
- quality-bar loop terminology
- `pass-core`, `pass-stretch`, `fail-cap`, and `blocked`

Primary source material:

- [methods-reporting-checklist-journal-v1.md](C:\Users\Dan\Desktop\Projects\Quantyra-Teaching\docs\evidence\methods-reporting-checklist-journal-v1.md)
- [manuscript-transparency-appendix-note-v1.md](C:\Users\Dan\Desktop\Projects\Quantyra-Teaching\docs\evidence\manuscript-transparency-appendix-note-v1.md)

### Supplement B. Run Accounting And Selection Logic

Include:

- branch-level run universes
- current evidence-bearing versus superseded runs
- incomplete versus complete branch status
- treatment of exploratory subsets such as BP006

Primary source material:

- [run-accounting-transparency-memo-v1.md](C:\Users\Dan\Desktop\Projects\Quantyra-Teaching\docs\evidence\run-accounting-transparency-memo-v1.md)
- [retained-selection-reporting-note-v1.md](C:\Users\Dan\Desktop\Projects\Quantyra-Teaching\docs\evidence\retained-selection-reporting-note-v1.md)

### Supplement C. Scoring Rubric And Reviewer Procedures

Include:

- scoring rubric
- worksheet structure
- operator-side scoring note
- `L2A` model-review note
- human `L2` process and status

Primary source material:

- [scoring-rubric-v1.md](C:\Users\Dan\Desktop\Projects\Quantyra-Teaching\docs\benchmarks\scoring-rubric-v1.md)
- [l2-review-handoff-protocol.md](C:\Users\Dan\Desktop\Projects\Quantyra-Teaching\docs\process\l2-review-handoff-protocol.md)
- [anthropic-llm-judge-best-practices-v1.md](C:\Users\Dan\Desktop\Projects\Quantyra-Teaching\docs\benchmarks\anthropic-llm-judge-best-practices-v1.md)

### Supplement D. Hosted Result Tables

Include expanded hosted tables with:

- provider
- model
- benchmark family
- baseline total
- taught total
- notes on review status

### Supplement E. Local Result Tables

Include:

- open-weight BP001 model table
- BP007B verifier-backed local planning table
- BP008 local workflow table

### Supplement F. Architecture Results

Include:

- BP006 retained pair table
- explicit note that the matrix is exploratory rather than exhaustive

### Supplement G. Runtime And Environment Constraints

Include:

- local hardware notes
- storage limits
- runtime-profile constraints
- why hosted and local evidence should not be treated as directly symmetric

## Current Rule

The supplement should increase transparency without making the main paper read like an internal program memo. The hosted empirical spine should remain in the main paper; the fuller accounting and branch detail should live in the supplement.
