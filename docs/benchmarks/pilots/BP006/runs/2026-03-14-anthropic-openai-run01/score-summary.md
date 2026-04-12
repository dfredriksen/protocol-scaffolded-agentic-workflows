# BP006 Anthropic Executor + OpenAI Reviewer Run 01 Score Summary

## Metadata
- Packet: `BP006-T1`
- Executor: Anthropic `claude-sonnet-4-6`
- Reviewer: OpenAI `gpt-4.1`
- Run folder: `docs/benchmarks/pilots/BP006/runs/2026-03-14-anthropic-openai-run01`

## Scores
- Executor-only baseline: `5/10`
- Single-model taught: `7/10`
- Executor-reviewer-correction: `8/10`
- Reviewer-takeover: `6/10`

## Main result
- The fourth BP006 hosted-hosted pair again favors correction over takeover.
- OpenAI review improved Anthropic's final artifact beyond the single-model taught condition.
- Anthropic absorbed the critique well enough that reviewer replacement was not needed.

## Key interpretation
- This pair strengthens the hypothesis that stronger executors can benefit most from critique-plus-revision when the reviewer is strong.
- It also shows that Anthropic's earlier drift is not fixed just by having a second model; the gain came from targeted critique that the executor actually used.
