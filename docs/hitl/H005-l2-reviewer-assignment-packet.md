# H005 - L2 Reviewer Assignment Packet

## Purpose
Brief a distinct internal evaluator to perform the hosted-matrix `L2` review pass.

## Requested action
Review the hosted benchmark matrix as a distinct evaluator and produce `L2` review artifacts without editing the frozen run outputs.

## Scope
- BP001 hosted runs:
  - `docs/benchmarks/pilots/BP001/runs/2026-03-13-openai-run01`
  - `docs/benchmarks/pilots/BP001/runs/2026-03-13-google-run01`
  - `docs/benchmarks/pilots/BP001/runs/2026-03-13-anthropic-run01`
- BP002 hosted runs:
  - `docs/benchmarks/pilots/BP002/runs/2026-03-13-openai-run01`
  - `docs/benchmarks/pilots/BP002/runs/2026-03-13-google-run01`
  - `docs/benchmarks/pilots/BP002/runs/2026-03-13-anthropic-run01`

## Reviewer constraints
- You must not be the original artifact author.
- Do not edit the underlying run outputs.
- Score from retained artifacts only.
- Record any uncertainty instead of silently correcting it.

## Reviewer materials
- `docs/process/evaluator-independence-protocol.md`
- `docs/process/l2-review-handoff-protocol.md`
- `docs/benchmarks/l2-review-packet-hosted-matrix-2026-03-13.md`
- `docs/benchmarks/scoring-rubric-v1.md`
- `docs/benchmarks/review-pass-worksheet-template.md`
- `docs/benchmarks/blinded-review-worksheet-template.md`

## Required outputs
- one review memo per hosted run in `docs/benchmarks/reviews/`
- completed review worksheets
- a short summary of:
  - score agreements
  - score changes
  - unresolved ambiguities

## What to look for
- whether the taught protocol is still stronger under independent review
- whether BP001 improvements are larger than BP002 improvements
- whether Google and Anthropic BP002 baselines were legitimately strong or over-scored
- whether any hosted scores should change due to task-fidelity concerns

## Completion signal
- All six hosted runs have `L2` review memos.
- Any score changes are justified in writing.
- The reviewer explicitly states the independence level used.
