# BP007 Task Packet V1

## Packet ID
- `BP007-T1`

## Benchmark packet
- `docs/benchmarks/packets/BP007-protocol-quality-bar-loop-pilot.md`

## Objective
Evaluate whether a protocol-following executor plus a fixed reviewer quality bar converges more reliably than the current single-model taught condition on the same repository planning task.

## Concrete task
Design the next implementation phase for the Quantyra-Teaching repository after the BP006 architecture freeze. The plan must stay grounded in benchmark packets, stories, run sheets, decision notes, and checkpoint updates already used in this repo.

## Why this task fits
- directly comparable to BP001 and BP006 planning evidence
- rich enough to expose reviewer defect quality and revision uptake
- auditable in markdown without external infrastructure

## Allowed tools
- local file inspection
- shell commands
- markdown note generation

## Fixed executor protocol
- `docs/process/planning-protocol.md`

## Fixed quality bar
An artifact passes only if it:
1. states a concrete repository-phase objective
2. names constraints that match this repo's markdown workflow
3. identifies required artifacts in existing repo areas
4. identifies dependencies and validation checkpoints
5. avoids invented non-repo systems, products, or workflows
6. includes a fallback path and retained-output expectation

## Conditions
### A. Single-model taught baseline
- Use the planning protocol
- Produce one draft
- Receive one validator pass
- Produce one final revision

### B. Protocol plus quality-bar loop
- Produce an initial draft using the planning protocol
- Reviewer checks against the fixed quality bar
- If any bar item fails, the reviewer returns a blocking-defects memo only
- Executor revises
- Repeat up to `2` review loops after the initial draft
- Record `pass`, `fail-cap`, or `blocked`

## Required retained outputs
- `single-taught-prompt.txt`
- `single-taught-draft.md`
- `single-taught-validator-feedback.md`
- `single-taught-final.md`
- `loop-executor-prompt.txt`
- `loop-quality-bar-prompt.txt`
- `loop-draft-01.md`
- `loop-review-01.md`
- `loop-revision-01.md`
- `loop-review-02.md` if needed
- `loop-revision-02.md` if needed
- `final-status.md`
- `evaluator-worksheet.md`
- `score-summary.md`

## Evaluation focus
- whether the loop reaches `pass`
- whether defects are specific and stable
- whether revisions resolve the cited failures
- whether the loop beats the single-model taught condition materially
