# BP001 Run 01 Taught Plan Final

## Planning type
- `mixed`

## Goal
Execute and score the first retained BP001 and BP002 pilot runs inside this repository.

## Success condition
- `docs/benchmarks/pilots/BP001/runs/2026-03-13-run01/` contains all required retained outputs.
- `docs/benchmarks/pilots/BP002/runs/2026-03-13-run01/` contains all required retained outputs.
- Both evaluator worksheets are completed and each score summary states the stronger condition, confounds, and follow-on action.

## Constraints
- Work only inside this repository.
- Use the shared scoring rubric and benchmark packets.
- Keep BP002 within the safe simulated workflow.

## Required artifacts
- BP001 prompt files, plans, worksheet, and summary
- BP002 prompt files, workflow traces, worksheet, and summary
- checkpoint update reflecting the first retained runs

## Dependencies
- `docs/benchmarks/packets/BP001-planning-loop-pilot.md`
- `docs/benchmarks/packets/BP002-structured-workflow-pilot.md`
- `docs/benchmarks/scoring-rubric-v1.md`
- `docs/benchmarks/pilots/BP001/evaluator-worksheet-v1.md`
- `docs/benchmarks/pilots/BP002/evaluator-worksheet-v1.md`
- `docs/benchmarks/pilots/BP001/runs/README.md`
- `docs/benchmarks/pilots/BP002/runs/README.md`

## Ordered actions
1. Write the exact prompts used for both conditions in BP001 and BP002.
2. Create the baseline outputs and taught outputs for BP001.
3. Create the baseline outputs and taught outputs for BP002.
4. Complete evaluator worksheets with all five rubric dimensions plus confounds.
5. Write `score-summary.md` in each run folder naming the stronger condition and the main reason.
6. Update `logs/checkpoint.json` with the pilot execution result and next follow-up.

## Validation checkpoints
- Every required file listed in each task packet exists in the correct run folder.
- BP001 taught output includes planning skeleton, dependencies, validation checkpoints, risks, and fallback.
- BP002 taught output records stop-condition handling explicitly.
- Each score summary names a stronger condition but limits the claim to pilot evidence.

## Risks
- Because the workflow is simulated, the result mainly supports methodology structure rather than live-browser robustness.
- Because the same operator prepared the artifacts, evaluator independence is limited.

## Fallback
- If scoring is ambiguous, mark the run as mixed evidence and revise the packet before a second run.

## Final scorecard
- Constraint adherence: pass
- Completion rate: pass
- Validation pass/fail: pass
- Rework count: 1 revision on BP001 plan
- Open follow-ups: add transfer runs and independent evaluation
