# OpenAI BP001 Run 01 Taught Plan Final

## Planning type
- `mixed`

## Goal
Execute the next implementation phase of this repository by advancing the hosted benchmark program with retained OpenAI and Google runs, scoring artifacts, and updated execution tracking.

## Success condition
- Hosted BP001 run folders for OpenAI and Google contain retained artifacts.
- Cross-model run tracking is updated with scores and notes.
- The next immediate execution step for BP002 is explicit.

## Constraints
- Stay within the existing benchmark packets and scoring rubric.
- Preserve comparable artifact structure across providers.
- Do not overstate findings beyond pilot evidence.

## Required artifacts
- OpenAI BP001 retained outputs
- Google BP001 retained outputs
- updated cross-model run sheet
- updated checkpoint note

## Dependencies
- `docs/benchmarks/pilots/BP001/task-packet-v1.md`
- `docs/benchmarks/scoring-rubric-v1.md`
- `docs/benchmarks/model-roster-v1.md`
- `docs/benchmarks/cross-model-run-sheet-v1.md`

## Ordered actions
1. Run OpenAI BP001 baseline and taught conditions.
2. Run Google BP001 baseline and taught conditions.
3. Score both providers against the shared rubric.
4. Record provider-specific evaluator worksheets and summaries.
5. Update the run sheet and checkpoint.
6. Queue BP002 as the next hosted slice.

## Validation checkpoints
- Both providers have baseline and taught artifacts retained.
- Score summaries name the stronger condition and key confounds.
- Provider outputs are preserved without manual rewriting beyond score interpretation.

## Risks
- Same-operator scoring remains a bias source.
- Google may follow the protocol format but still drift from the intended task.

## Fallback
- If a provider output drifts materially, retain it as-is and score it accordingly rather than normalizing it.

## Genuine teaching test
- Compare each provider’s weak-prompt baseline against its own taught condition on the same task packet.

## Comparison condition
- Within-provider baseline versus taught-protocol comparison.

## Artifact retention
- Store prompts, model outputs, validator notes, score summary, and evaluator worksheet in the run folder.

## Closeout scorecard
- Constraint adherence: pass
- Completion rate: pass
- Validation pass/fail: pass
- Rework count: 1 revision
- Open follow-ups: execute BP002 hosted slice and add second-pass review
