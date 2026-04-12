# BP006 OpenAI Executor + Anthropic Reviewer Run 01 Score Summary

## Metadata
- Packet: `BP006-T1`
- Executor: OpenAI `gpt-4.1`
- Reviewer: Anthropic `claude-sonnet-4-6`
- Run folder: `docs/benchmarks/pilots/BP006/runs/2026-03-14-openai-anthropic-run01`

## Scores
- Executor-only baseline: `4/10`
- Single-model taught: `5/10`
- Executor-reviewer-correction: `6/10`
- Reviewer-takeover: `5/10`

## Main result
- The first BP006 hosted-hosted pair shows a modest MoE effect.
- The correction condition beat both the weak baseline and the single-model taught condition.
- The takeover condition did not beat correction, which suggests the gain came from sharper critique plus executor revision rather than from simply letting the reviewer replace the executor.

## Key interpretation
- Anthropic provided better critique than OpenAI's self-validator on this task.
- OpenAI's revised final plan absorbed some of that critique successfully.
- Both MoE finals still hallucinated some repo paths, so this should be treated as mixed pilot evidence rather than a strong branch win.
