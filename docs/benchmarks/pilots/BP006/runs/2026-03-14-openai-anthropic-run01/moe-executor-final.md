# Revised Next Implementation Phase Plan: Quantyra-Teaching Repository

## Objective

Advance the Quantyra-Teaching repository beyond the BP001 open-weight freeze by expanding and refining markdown-based research artifacts, with explicit file paths, clearer validation criteria, and protocol-compliant sequencing.

## Constraints

- All work must remain within markdown files and the established research workflow.
- No databases, user management, APIs, external services, or training pipelines.
- All artifacts must conform to existing formats and reside in designated repository paths.

## Required Artifacts and Paths

- Benchmark packets: `docs/benchmarks/packets/BP002.md`
- Stories: `stories/SN002.md`, `stories/SN003.md`
- Run sheets: `docs/benchmarks/runsheets/RS002.md`
- Decision logs: `decisions/decision-log.md`
- Checkpoint updates: `checkpoints/CP002.md`
- Peer review records: `reviews/peer-review-BP002.md`

## Dependencies

- BP001 artifacts:
  - `docs/benchmarks/packets/BP001-planning-loop-pilot.md`
  - `stories/S001.md`
  - prior BP001 run artifacts
  - `logs/checkpoint.json`

## Ordered Execution Steps

1. Synthesize BP001 freeze into `checkpoints/CP002.md`.
2. Draft `docs/benchmarks/packets/BP002.md`.
3. Peer review `BP002` in `reviews/peer-review-BP002.md`.
4. Expand story coverage in `stories/SN002.md` and linked files.
5. Draft `docs/benchmarks/runsheets/RS002.md` with procedure, expected outcomes, and edge cases.
6. Document execution planning inside the run sheet rather than executing yet.
7. Append decision rationale to `decisions/decision-log.md`.

## Validation Checkpoints

- Peer review file contains no unresolved failures.
- Every new story links to at least one benchmark item.
- Run sheet contains procedure, expected outcomes, edge cases, and recording format.
- Decision log cites benchmark and story IDs.
- `CP002.md` summarizes new artifacts and validation outcomes.

## Fallback

- Trigger: peer review leaves unresolved failures or the run sheet cannot be completed coherently.
- Action: write a fallback analysis in `checkpoints/CP002.md`, reduce scope to a narrower packet, and resubmit for review.
- Exit condition: revised packet passes review and is referenced in the checkpoint.
