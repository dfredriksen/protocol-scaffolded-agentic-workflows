# BP007B DeepSeek Executor + OpenAI Reviewer Run 01 Score Summary

## Metadata
- Packet: `BP007B-T1`
- Executor: Ollama `deepseek-coder-v2:16b-lite-instruct-q3_K_S`
- Reviewer: OpenAI `gpt-4.1`
- Run folder: `docs/benchmarks/pilots/BP007B/runs/2026-03-14-deepseek-openai-run01`

## Scores
- Single-model taught: `4/10`
- Tiered quality-bar loop: `4/10`
- Final status: `fail-cap`
- Core pass reached: `no`
- Stretch pass reached: `no`

## Main result
- The first BP007B run did not improve the weak executor's final score.
- The tiered bar gave a cleaner diagnosis than the flat BP007 bar, but it still did not get this executor to `pass-core`.

## Key interpretation
- The bar shape matters, but it is not sufficient by itself for this executor under strong review.
- The next useful question is whether the same tiered bar can produce a `pass-core` under a weaker all-local reviewer, or whether the executor itself is the dominant bottleneck.
