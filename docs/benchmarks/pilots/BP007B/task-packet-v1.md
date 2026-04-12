# BP007B Task Packet V1

## Packet ID
- `BP007B-T1`

## Benchmark packet
- `docs/benchmarks/packets/BP007B-tiered-quality-bar-loop-pilot.md`

## Objective
Evaluate whether a tiered quality bar helps weaker models converge to a solid repo-grounded plan first, and then pushes them toward a stretch-quality result.

## Concrete task
Design the next implementation phase for the Quantyra-Teaching repository after the BP006 architecture freeze. The plan must stay grounded in benchmark packets, stories, run sheets, decision notes, and checkpoint updates already used in this repo.

## Fixed executor protocol
- `docs/process/planning-protocol.md`

## Core bar
An artifact achieves `pass-core` only if it:
1. states a concrete repository-phase objective
2. names constraints that match this repo's markdown workflow
3. identifies required artifacts in existing repo areas
4. identifies dependencies and at least one concrete validation checkpoint
5. includes a real fallback path and retained-output expectation
6. avoids invented non-repo systems, products, or workflows

## Stretch bar
An artifact achieves `pass-stretch` only if it also:
1. states what would count as genuine teaching rather than prompt overfitting
2. identifies at least one explicit comparison condition
3. names at least three concrete existing repo artifacts or paths that belong to the next phase
4. specifies retained outputs with stronger rerunability, including where they belong in the current repo structure
5. provides clearer dependency ordering and checkpoint logic tied to those real repo artifacts
6. invents no new repo folders, scripts, benchmark families, or workflow surfaces
7. reaches evaluator quality consistent with a `10/10` planning result

## Conditions
### A. Single-model taught baseline
- Same as BP007

### B. Tiered quality-bar loop
- Review loop 1 and 2 target only the core bar
- If core passes, one additional stretch review is allowed
- Record final status as `pass-core`, `pass-stretch`, `fail-cap`, or `blocked`

## Required retained outputs
- `single-taught-prompt.txt`
- `single-taught-draft.md`
- `single-taught-validator-feedback.md`
- `single-taught-final.md`
- `loop-executor-prompt.txt`
- `loop-core-bar-prompt.txt`
- `loop-stretch-bar-prompt.txt`
- `loop-draft-01.md`
- `loop-review-01.md`
- `loop-revision-01.md`
- `loop-review-02.md` if needed
- `loop-revision-02.md` if needed
- `stretch-review.md` if reached
- `stretch-revision.md` if needed
- `final-status.md`
- `evaluator-worksheet.md`
- `score-summary.md`

## Evaluation focus
- whether the pair can reach `pass-core`
- whether the pair can reach `pass-stretch`
- whether the tiered bar gives a better path toward `10/10` than the flat BP007 bar
