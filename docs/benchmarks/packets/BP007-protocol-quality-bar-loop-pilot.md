# BP007 - Protocol Plus Quality-Bar Loop Pilot

## Benchmark family
Planning-quality family with governed review loops

## Source teaching episode
- `docs/episodes/TE001-dapo-planning-loop.md`

## Purpose
Test whether a protocol-following executor plus an explicit reviewer quality bar can converge more reliably than both a single-model taught condition and the BP006 one-shot correction architecture.

## Task statement
Given a medium/high complexity repository planning task, require the executor to follow the planning protocol and require the reviewer to grade against a fixed quality bar until the work passes, the loop cap is hit, or the task is blocked.

## Allowed tools
- repo file inspection
- shell commands
- markdown document editing
- planning and review artifacts

## Role-control rule
- The executor always remains the final author in the loop condition.
- The reviewer evaluates and returns blocking defects only.
- The quality bar must be fixed before the run starts.

## Conditions
### A. Single-model taught baseline
- Use `docs/process/planning-protocol.md`
- One draft plus one validator revision

### B. Protocol plus quality-bar loop
1. Executor drafts using `docs/process/planning-protocol.md`.
2. Reviewer evaluates against the fixed quality bar.
3. Executor revises.
4. Repeat up to the declared loop cap.
5. Record final status as `pass`, `fail-cap`, or `blocked`.

### C. Optional reviewer-takeover control
- Only if explicitly enabled for a follow-on packet.
- Not part of the default BP007 comparison.

## Required outputs
- baseline taught prompt, draft, validator feedback, and final artifact
- loop executor protocol prompt
- loop reviewer quality-bar prompt
- initial loop draft
- loop-1 review memo
- loop-1 revision
- loop-2 review memo if needed
- loop-2 revision if needed
- final status note
- evaluator worksheet
- score summary

## Validation method
- Score final artifacts with `docs/benchmarks/scoring-rubric-v1.md`.
- Also compare:
  - pass versus fail-cap rate
  - loops required to pass
  - whether reviewer defects stay stable
  - whether executor revisions actually address failed criteria

## Known confounds
- reviewer criteria can drift if the quality bar is underspecified
- loop success may reflect reviewer weakness rather than executor strength
- repeated loops can become hidden rewriting if the reviewer starts authoring instead of evaluating

## Pilot completion bar
- At least one pair is run through the full loop condition with explicit final status.
- The quality bar is retained verbatim.
- Loop convergence metrics are recorded alongside final score.
