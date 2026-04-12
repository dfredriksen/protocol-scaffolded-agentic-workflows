# Benchmark Framework V1

## Purpose
Translate the benchmark protocol into a concrete first-pass research design for testing whether taught protocols improve agentic coding outcomes.

## Evaluation slices
- Planning tasks
  - produce and refine execution plans for medium/high complexity coding or research tasks
- Workflow tasks
  - execute structured multi-step operational tasks with validation gates
- Tool-use tasks
  - use browsers, CLIs, or external interfaces under explicit protocol constraints

## Proposed benchmark families
1. Planning-quality family
   - compare untaught planning against DAPO-informed planning loop usage
2. Structured browser/workflow family
   - compare weak prompting against explicit stepwise protocol use
3. Coding-transfer family
   - compare whether a taught review or implementation protocol transfers across repos

## Minimum task packet per benchmark item
- task statement
- allowed tools
- baseline prompt
- taught protocol
- scoring rubric
- retained outputs
- transfer variant

## Initial metrics
- completion success
- validator pass rate
- number of corrective iterations
- total human interventions
- transfer success on held-out variant

## Open design questions
- whether to score with deterministic scripts, rubric review, or both
- how many runs per condition are needed for a credible pilot
- which agentic coding tools should be compared in the first paper

## Next step
Turn one planning family and one workflow family into executable benchmark packets.

## Initial executable packets
- `docs/benchmarks/packets/BP001-planning-loop-pilot.md`
- `docs/benchmarks/packets/BP002-structured-workflow-pilot.md`
- `docs/benchmarks/packets/BP003-tool-mediated-workflow-pilot.md`
- `docs/benchmarks/packets/BP004-live-tool-workflow-pilot.md`
- `docs/benchmarks/scoring-rubric-v1.md`

## Initial concrete pilot assets
- `docs/benchmarks/pilots/BP001/task-packet-v1.md`
- `docs/benchmarks/pilots/BP001/evaluator-worksheet-v1.md`
- `docs/benchmarks/pilots/BP002/task-packet-v1.md`
- `docs/benchmarks/pilots/BP002/source-truth-packet-v1.md`
- `docs/benchmarks/pilots/BP002/evaluator-worksheet-v1.md`
- `docs/benchmarks/pilots/BP003/task-packet-v1.md`
- `docs/benchmarks/pilots/BP003/source-truth-packet-v1.md`
- `docs/benchmarks/pilots/BP003/evaluator-worksheet-v1.md`
- `docs/benchmarks/pilots/BP004/task-packet-v1.md`
- `docs/benchmarks/pilots/BP004/source-truth-packet-v1.md`
- `docs/benchmarks/pilots/BP004/evaluator-worksheet-v1.md`

## Evaluation rigor controls
- `docs/process/evaluator-independence-protocol.md`
- `docs/process/l2-review-handoff-protocol.md`
- `docs/benchmarks/review-pass-worksheet-template.md`
- `docs/benchmarks/blinded-review-worksheet-template.md`
- `docs/benchmarks/reviews/`
