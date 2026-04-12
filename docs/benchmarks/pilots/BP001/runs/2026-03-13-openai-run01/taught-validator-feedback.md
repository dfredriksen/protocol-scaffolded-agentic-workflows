# OpenAI BP001 Run 01 Validator Feedback

## Correctness issues
- The draft is protocol-compliant but shifts toward creating a general planning-template subsystem rather than the narrower benchmark-execution phase named in the task packet.

## Missing dependencies
- It should reference the existing BP001 and BP002 task packets and evaluator worksheets directly.

## Evaluation gaps
- It should state where the retained run outputs for the hosted cross-model slice will live.

## Concrete patch list
1. Narrow the goal to executing the hosted benchmark slice for BP001 and BP002.
2. Add explicit retained-output targets under `docs/benchmarks/pilots/`.
3. Add a scorecard that closes on current hosted execution rather than future generic template work.
