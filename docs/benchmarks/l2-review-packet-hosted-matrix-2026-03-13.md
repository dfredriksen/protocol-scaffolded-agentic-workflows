# L2 Review Packet - Hosted Matrix - 2026-03-13

## Purpose
Provide a distinct evaluator with the exact materials needed to score the hosted Teaching benchmark matrix without changing the underlying run artifacts.

## Independence target
- `L2 distinct internal evaluator`

## Included benchmark runs
### BP001
- `docs/benchmarks/pilots/BP001/runs/2026-03-13-openai-run01`
- `docs/benchmarks/pilots/BP001/runs/2026-03-13-google-run01`
- `docs/benchmarks/pilots/BP001/runs/2026-03-13-anthropic-run01`

### BP002
- `docs/benchmarks/pilots/BP002/runs/2026-03-13-openai-run01`
- `docs/benchmarks/pilots/BP002/runs/2026-03-13-google-run01`
- `docs/benchmarks/pilots/BP002/runs/2026-03-13-anthropic-run01`

## Reviewer materials
- `docs/benchmarks/scoring-rubric-v1.md`
- `docs/process/evaluator-independence-protocol.md`
- `docs/process/l2-review-handoff-protocol.md`
- `docs/benchmarks/review-pass-worksheet-template.md`
- `docs/benchmarks/blinded-review-worksheet-template.md`

## Reviewer instructions
1. Do not edit the underlying run-folder artifacts.
2. Score each run from retained artifacts only.
3. Record whether you agree with:
   - the stronger condition
   - the score magnitude
4. If you believe a score should change, explain why in terms of observed artifacts.
5. If feasible, prefer a blinded packet for the final publication-facing pass.

## Required outputs
- one review memo per run under `docs/benchmarks/reviews/`
- one completed worksheet per run or one consolidated worksheet bundle
- a short reviewer-level summary of:
  - agreement rate
  - score changes
  - remaining ambiguities

## Main scoring questions
- Did the taught protocol improve within-model outcomes?
- Was the improvement larger on planning tasks than on workflow tasks?
- Do any providers show task-fidelity gains that are weaker than their structure gains?
- Are current BP002 tasks too easy for any provider family?

## Expected pain points
- OpenAI BP002 baseline may tempt re-interpretation because it looks superficially complete while violating stop discipline.
- Google BP001 taught condition should be checked carefully for structural uplift versus task drift.
- Anthropic BP001 baseline should be checked for categorical failure rather than partial credit inflation.

## Follow-on action after review
- If `L2` broadly agrees with first-pass scores, freeze the hosted matrix as publication-ready pilot evidence.
- If `L2` materially disagrees, update the synthesis memo and rerank the next benchmark-design priority.
