# BP001 - Planning Loop Pilot Packet

## Benchmark family
Planning-quality family

## Source teaching episode
- `docs/episodes/TE001-dapo-planning-loop.md`

## Purpose
Test whether a taught planning protocol improves plan quality for medium/high complexity agentic coding work compared with weak prompting.

## Task statement
Given a medium/high complexity repository task, produce an execution plan that is specific enough for implementation and review.

## Candidate task archetypes
- multi-file bug fix with dependencies
- research-repo protocol update with follow-on artifacts
- benchmark or evaluation design for a coding workflow

## Allowed tools
- repo file inspection
- shell commands
- markdown document editing
- planning and review artifacts

## Conditions
### A. Weak-prompt baseline
Prompt the agent to "make a plan for this task" without giving the planning protocol.

### B. Taught-protocol condition
Provide `docs/process/planning-protocol.md` and require use of the plan-and-refine loop.

## Required outputs
- initial plan
- revised plan if validator feedback identifies issues
- final scorecard
- task notes listing assumptions, dependencies, and validation steps

## Validation method
- Score both conditions with `docs/benchmarks/scoring-rubric-v1.md`.
- Record whether the plan includes:
  - goal and success condition
  - constraints
  - dependencies
  - validation checkpoints
  - rollback or fallback
  - explicit risks

## Transfer variant
Run the same comparison on a second repository or domain-adjacent task and measure whether the taught planning structure still holds.

## Retained outputs
- prompts used for each condition
- resulting plans
- validator comments
- final scores
- evaluator notes on confounds

## Known confounds
- task-selection bias if only favorable tasks are chosen
- evaluator subjectivity in plan quality
- prior familiarity with the repo

## Pilot completion bar
- At least one task is run in both conditions.
- Outputs are retained and scored.
- Observed differences are summarized without overstating generality.
