# Anthropic BP001 Run 01 Taught Plan Final

## Planning type
- `mixed`

## Goal
Advance the repository’s next implementation phase by extending the hosted benchmark program with retained provider runs, scoring, and updated execution tracking.

## Constraints
- Use the existing BP001 task packet and scoring rubric.
- Preserve provider comparability.
- Retain raw provider outputs even when task drift occurs.

## Required artifacts
- Anthropic BP001 retained outputs
- updated cross-model run sheet
- updated checkpoint note

## Dependencies
- `docs/benchmarks/pilots/BP001/task-packet-v1.md`
- `docs/benchmarks/scoring-rubric-v1.md`
- `docs/benchmarks/cross-model-run-sheet-v1.md`

## Validation checkpoints
- baseline and taught Anthropic artifacts are retained
- score summary names the stronger condition and the main confounds
- task drift is recorded explicitly rather than hidden

## Risks
- Anthropic may produce highly structured but semantically drifted plans
- same-operator scoring remains a bias source

## Fallback
- If the model drifts from the benchmark task, preserve the output and score it as drift rather than normalizing it.

## Genuine teaching test
- Compare Anthropic’s weak-prompt baseline against its own taught condition on the same task packet.

## Comparison condition
- within-provider baseline versus taught-protocol comparison

## Artifact retention
- retain prompts, raw model outputs, validator note, score summary, and evaluator worksheet in the run folder

## Closeout scorecard
- Constraint adherence: partial-to-pass
- Completion rate: pass
- Validation pass/fail: pass
- Rework count: 1 revision
- Open follow-ups: execute Anthropic BP002 and review whether task drift persists
