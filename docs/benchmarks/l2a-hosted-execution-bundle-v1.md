# L2A Hosted Execution Bundle V1

## Purpose
Provide one unambiguous entry point for executing Anthropic-based `LLM-as-judge` review over the frozen hosted matrix.

## Use this bundle when
- the goal is to add a structured model-based review layer
- the hosted matrix is the review target
- the result should remain explicitly distinct from human `L2`

## Reviewer identity
- reviewer type: `LLM-as-judge`
- default reviewer model: `claude-sonnet-4-6`
- independence level label: `L2A hosted model review`

## Entry sequence

1. read `docs/benchmarks/anthropic-llm-judge-best-practices-v1.md`
2. read `docs/process/l2a-llm-judge-review-protocol.md`
3. read `docs/benchmarks/scoring-rubric-v1.md`
4. run `scripts/run_l2a_hosted_anthropic.py`
5. store results under the designated output location below

## Frozen hosted run targets

### BP001
- `docs/benchmarks/pilots/BP001/runs/2026-03-13-openai-run01`
- `docs/benchmarks/pilots/BP001/runs/2026-03-13-google-run01`
- `docs/benchmarks/pilots/BP001/runs/2026-03-13-anthropic-run01`

### BP002
- `docs/benchmarks/pilots/BP002/runs/2026-03-13-openai-run01`
- `docs/benchmarks/pilots/BP002/runs/2026-03-13-google-run01`
- `docs/benchmarks/pilots/BP002/runs/2026-03-13-anthropic-run01`

## Output location

Store `L2A` outputs under:
- `docs/benchmarks/reviews/l2a-hosted-matrix/`

Minimum outputs:
- one consolidated hosted summary
- per-run JSON results
- per-run markdown worksheets
- per-run markdown memos
- condition-label maps

## Manuscript rule

Treat these results as:
- model-based secondary review

Do not treat them as:
- the resolution of the human-independence gate
