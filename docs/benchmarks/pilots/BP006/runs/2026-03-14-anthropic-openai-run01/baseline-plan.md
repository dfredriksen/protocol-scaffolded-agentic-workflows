# Implementation Phase Plan: BP002 - Structured Reasoning & Calibration

## Objective
Extend the benchmark packet series to probe structured reasoning quality and confidence calibration in open-weight models, using the same markdown-based workflow established in BP001.

## Constraints
- All work stays inside repo markdown files and existing folder conventions.
- No databases, APIs, user systems, or external infrastructure.
- No new tooling beyond what already runs BP001 sheets.
- Artifacts must be reproducible by anyone cloning the repo and following the run sheets.

## Required Artifacts
- `BP002-spec.md`
- `BP002-stories.md`
- `BP002-runsheet.md`
- `BP002-decisions.md`
- `BP002-results-template.md`
- `CHECKPOINT-BP002-draft.md`
- `CHECKPOINT-BP002-freeze.md`

## Dependencies
- BP001 freeze complete.
- BP001 run-sheet template available.
- BP001 scoring conventions available.

## Ordered Execution Steps
1. Scope decision.
2. Write BP002 spec.
3. Write BP002 stories.
4. Write BP002 run sheet.
5. Draft checkpoint.
6. Dry run.
7. Freeze.

## Validation Checkpoints
- Scope bounded after Step 1.
- Spec covers task types and rubric clearly.
- Stories include required edge cases.
- Run sheet references no external tools.
- Freeze checkpoint exists and marks the cycle read-only.

## Fallback
If calibration scoring is ambiguous after the dry run, add a rubric clarification file, re-score dry-run cases, and record the revision before freeze.
