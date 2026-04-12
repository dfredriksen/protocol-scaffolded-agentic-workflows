# BP007 DeepSeek Executor + OpenAI Reviewer Run 01 Score Summary

## Metadata
- Packet: `BP007-T1`
- Executor: Ollama `deepseek-coder-v2:16b-lite-instruct-q3_K_S`
- Reviewer: OpenAI `gpt-4.1`
- Run folder: `docs/benchmarks/pilots/BP007/runs/2026-03-14-deepseek-openai-run01`

## Scores
- Single-model taught: `4/10`
- Protocol plus quality-bar loop: `4/10`
- Final loop status: `fail-cap`
- Review loops used after initial draft: `2`

## Main result
- The first hybrid BP007 fallback pair did not beat the single-model taught baseline materially.
- Unlike the strong-hosted BP007 pair, this run did not pass immediately.
- The key value of this run is that it demonstrates real quality-bar pressure on a weak executor.

## Key interpretation
- The OpenAI reviewer consistently identified the same repo-grounding and fallback-path defects across both reviews.
- DeepSeek partially responded but did not converge within the cap.
- BP007 is more diagnostic on weak executors than on strong ones: it can reveal where the bar is meaningful even when it does not yet improve the final score.
