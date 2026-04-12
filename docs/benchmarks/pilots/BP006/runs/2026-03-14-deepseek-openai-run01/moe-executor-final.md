# Quantyra-Teaching: Implementation Phase Plan (Post-BP001 Freeze)

## Goal
Expand benchmark coverage and refine story-driven evaluation while staying inside the repository's markdown benchmark workflow after the open-weight BP001 freeze.

## Constraints
- Stay within the existing markdown-based research process.
- Do not introduce databases, APIs, or external infrastructure.
- Retain outputs so another operator can rerun the phase.

## Required Artifacts
- Benchmark packet updates under `docs/benchmarks/`
- New stories under `stories/`
- Run sheets that track execution state
- Decision notes and checkpoint updates

## Dependencies
- The current freeze state recorded in `logs/checkpoint.json`
- Existing benchmark packets and templates already present in the repo
- Prior decision notes and retained run folders from earlier benchmark families

## Ordered Steps
1. Review the BP001 freeze state and existing retained artifacts.
2. Define the next phase objective in a markdown planning note.
3. Add or revise benchmark packets for the next branch.
4. Add the required stories for execution and evaluation.
5. Add or update run sheets for the new branch.
6. Log any methodological decisions exposed during execution.
7. Update `logs/checkpoint.json` with the new state.

## Validation Checkpoints
- Every planned artifact maps to an actual repo path.
- The branch defines at least one comparison condition.
- Retained outputs are sufficient for rerun.
- Risks of generic off-repo planning are called out before execution.

## Fallback
- If the next branch is not fully specified, stop at packet and story creation.
- Record the blocker in a decision note and checkpoint update before continuing.

This corrected version is materially better than the original draft because it is finally grounded in the repository, but it still relies on broad placeholders rather than the repo's strongest existing naming discipline.
