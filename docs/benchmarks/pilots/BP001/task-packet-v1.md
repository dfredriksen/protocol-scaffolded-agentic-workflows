# BP001 Task Packet V1

## Packet ID
BP001-T1

## Benchmark packet
- `docs/benchmarks/packets/BP001-planning-loop-pilot.md`

## Objective
Evaluate whether the taught planning protocol produces a materially better execution plan than a weak prompt on a realistic medium/high complexity repo task.

## Concrete task
Design the next implementation phase for this repository after benchmark packet creation. The plan must specify how to execute and score BP001 and BP002 pilots, including task setup, evaluator workflow, retained outputs, and pilot closeout artifacts.

## Why this task fits
- medium complexity with multiple dependent artifacts
- directly relevant to the research program
- auditable in markdown without requiring external infrastructure

## Allowed tools
- local file inspection
- shell commands
- markdown editing or note generation

## Condition prompts
### A. Weak-prompt baseline
Create a plan for the next implementation phase of this repository. The plan should be practical and specific enough to execute.

### B. Taught-protocol condition
Using `docs/process/planning-protocol.md`, create a plan for the next implementation phase of this repository. Apply the full plan-and-refine loop, include validation checkpoints, risks, dependencies, and fallback paths, and close with a scorecard.

## Required retained outputs
- `baseline-prompt.txt`
- `baseline-plan.md`
- `taught-prompt.txt`
- `taught-plan-draft.md`
- `taught-validator-feedback.md`
- `taught-plan-final.md`
- `score-summary.md`

## Transfer variant
Repeat the same comparison on a second planning task:
- design a novelty-review workstream for publication preparation, or
- design a coding-transfer benchmark family packet

## Evaluation focus
- completeness of planning skeleton
- explicit dependency handling
- presence and quality of validation checkpoints
- specificity of risks and fallback paths
- readiness for immediate execution

## Pilot completion bar
- Both conditions are run and retained.
- The evaluator worksheet is completed.
- A short comparison summary is written without making broad claims.
