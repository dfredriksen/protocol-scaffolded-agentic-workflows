# BP006 Task Packet V1

## Packet ID
BP006-T1

## Benchmark packet
- `docs/benchmarks/packets/BP006-mixture-of-experts-planning-pilot.md`

## Objective
Evaluate whether a two-model executor-plus-reviewer architecture produces a materially better repository planning artifact than both:
- an executor-only weak baseline
- a single-model taught planning condition

## Concrete task
Design the next implementation phase for the Quantyra-Teaching repository after the open-weight BP001 freeze. The plan must specify how to instantiate and evaluate the next research branch, staying grounded in benchmark packets, stories, run sheets, decisions, and checkpoint updates already used in this repo.

## Why this task fits
- directly comparable to BP001 planning-quality evidence
- rich enough to expose critique quality and revision uptake
- auditable in markdown without external infrastructure

## Allowed tools
- local file inspection
- shell commands
- markdown note generation

## Condition prompts
### A. Executor-only weak baseline
Create a plan for the next implementation phase of this repository. The plan should be practical and specific enough to execute. Stay inside this repo's markdown research workflow.

### B. Single-model taught condition
Using `docs/process/planning-protocol.md`, create a plan for the next implementation phase of this repository. Apply the plan-and-refine loop, include dependencies, validation checkpoints, risks, and fallback paths, and revise once after validator feedback.

### C. Executor-reviewer-correction condition
1. Executor prompt:
   - Draft the plan using the same task as condition A.
2. Reviewer prompt:
   - Review the executor draft against:
     - `docs/process/planning-protocol.md`
     - repo grounding
     - missing dependencies
     - risks of generic or off-repo planning
   - Do not rewrite the full answer.
3. Executor revision prompt:
   - Revise the original draft using the reviewer feedback. Remain the final author.

### D. Reviewer-takeover condition
1. Executor produces the same initial draft as in condition C.
2. Reviewer critiques the draft.
3. Reviewer writes the final revised plan and is labeled as final author.

## Required retained outputs
- `baseline-prompt.txt`
- `baseline-plan.md`
- `single-taught-prompt.txt`
- `single-taught-draft.md`
- `single-taught-validator-feedback.md`
- `single-taught-final.md`
- `moe-executor-prompt.txt`
- `moe-executor-draft.md`
- `moe-reviewer-prompt.txt`
- `moe-reviewer-feedback.md`
- `moe-executor-revision-prompt.txt`
- `moe-executor-final.md`
- `moe-reviewer-takeover-final.md`
- `evaluator-worksheet.md`
- `score-summary.md`

## Evaluation focus
- whether critique identifies real plan defects
- whether correction improves the executor's own output
- whether takeover beats correction simply by swapping final authorship
- whether any MoE architecture clearly beats the single-model taught condition

## Pilot completion bar
- All four conditions are run and retained.
- Authorship is explicit in the MoE conditions.
- The evaluator worksheet compares correction and takeover separately.
