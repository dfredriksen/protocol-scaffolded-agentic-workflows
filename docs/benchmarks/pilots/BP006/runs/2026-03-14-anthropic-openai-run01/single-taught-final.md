# Implementation Phase Plan: Post-BP001 Freeze

## Phase Objective
Conduct structured capability evaluation of the frozen BP001 open-weight model using the repository's existing benchmark-packet and run-sheet workflow, produce a graded checkpoint update, and determine readiness criteria for the next story cycle.

## Constraints and Dependencies
- All work stays inside the markdown-based research workflow.
- No databases, APIs, user-management, training pipelines, or external infrastructure.
- No product rollout planning.

Required pre-existing artifacts:
- `benchmark-packet-BP001-v1.md`
- `benchmark-rubric-BP001-v1.md`
- `runsheet-template-v1.md`
- `checkpoint-log-master.md`
- `story-index.md`
- `phase-tracker.md`

Phase-entry gate:
- BP001 freeze commit must be tagged and the freeze decision recorded in `decision-log.md` before any step below executes.

## Markdown Artifacts
Must be created:
- `runsheet-BP001-eval-v1.md`
- `results-BP001-eval-v1.md`
- `checkpoint-update-BP001-post-freeze.md`
- `capability-gap-analysis-BP001-v1.md`
- `story-candidates-BP001-phase2-v1.md`
- `decision-log.md` entry `decision-phase2-entry`

Must be updated:
- `story-index.md`
- `checkpoint-log-master.md`
- `phase-tracker.md`

## Ordered Execution Steps
1. Confirm freeze gate.
2. Instantiate run sheet from the template and populate from the benchmark packet.
3. Execute benchmark items and record outputs.
4. Score and aggregate using the rubric artifact.
5. Write graded checkpoint update with result-row references.
6. Produce capability-gap analysis with severity assignments.
7. Draft story candidates so every severity-1 gap has coverage.
8. Append a phase decision entry to the decision log.
9. Update standing artifacts.

## Validation Checkpoints
- Run sheet fully populated with rubric references.
- All new artifacts follow versioning and naming conventions.
- No more than 10% blocked during execution.
- Every result row has a score and rubric citation.
- Checkpoint claims cite result rows.
- Every severity-1 gap has at least one story candidate.
- Phase decision is explicit and cites checkpoint and gap artifacts.

## Fallback and Rollback
- Halt if the freeze gate or required artifacts are missing.
- Pause if blocked-item limits are exceeded.
- Re-score ambiguous items before checkpointing.
- Return the decision entry to draft if readiness remains ambiguous.
- Freeze the phase and restart from the run sheet if a benchmark-design flaw is discovered.
