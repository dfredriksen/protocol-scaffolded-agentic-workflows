# Quantyra-Teaching: Post-BP001 Implementation Phase Plan (Revised)

## Objective
Extend the Quantyra-Teaching research workflow beyond the BP001 freeze by producing a structured BP002 cycle that deepens concept coverage, stress-tests edge cases from BP001 review, and tightens the run-sheet-to-decision-log loop.

## Constraints
- All work remains inside markdown files.
- No external infrastructure, APIs, databases, or training pipelines.
- No user-management or rollout artifacts.
- Every BP002 artifact must trace back to a BP001 finding or open question logged in `decisions/DL-001.md`, enforced through a `BP001-Source` field.

## Dependency Detection and Reporting
- Check `checkpoints/CK-BP001-final.md` for `Status: FROZEN`.
- Check `decisions/DL-001.md` for unresolved items.
- Confirm BP001 run-sheet template and story conventions exist before execution.
- Record dependency-gate results in `analysis/GAP-BP001.md`.
- If any dependency fails, log a blocker in `decisions/DL-002.md` before proceeding.

## Required Artifacts
- `analysis/GAP-BP001.md`: dependency gate, coverage gaps, edge-case clusters, open questions.
- `benchmarks/BP002.md`: scope, benchmark items, scoring rubric, acceptance threshold.
- `stories/EC-001.md` through `stories/EC-N.md`: edge-case stories linked to gap IDs.
- `run-sheets/RS-BP002.md`: pre-run checklist, dry run, full run, run summary.
- `decisions/DL-002.md`: blockers, numbered decisions, rubric clarifications, cycle sign-off.
- `checkpoints/CK-BP002-draft.md` and `checkpoints/CK-BP002-final.md`: mid-cycle and freeze checkpoints.

## Ordered Execution Steps
1. Complete dependency gate and gap analysis.
2. Draft `benchmarks/BP002.md`.
3. Author edge-case stories linked to gap IDs.
4. Create `run-sheets/RS-BP002.md` from the BP001 template.
5. Write `checkpoints/CK-BP002-draft.md` at mid-cycle.
6. Execute the full run sheet and log ambiguous results in `decisions/DL-002.md`.
7. Resolve decisions and freeze `checkpoints/CK-BP002-final.md`.

## Validation Checkpoints
- Dependency gate complete and signed off.
- Every high-severity gap has at least one BP002 case and one EC story.
- Run sheet covers all benchmark items and stories.
- Mid-cycle checkpoint written before full freeze.
- Final checkpoint and decision log are closed with no unresolved blockers.

## Fallback
If dependencies fail, story coverage is incomplete, or the rubric remains ambiguous, stop advancement, log the failure in `decisions/DL-002.md`, correct the affected artifact, and rerun the relevant gate before freezing.
