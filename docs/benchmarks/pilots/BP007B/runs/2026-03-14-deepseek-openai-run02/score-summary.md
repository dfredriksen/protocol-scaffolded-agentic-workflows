# BP007B DeepSeek Executor + OpenAI Reviewer Run 02 Score Summary

## Metadata
- Packet: `BP007B-T1`
- Executor: Ollama `deepseek-coder-v2:16b-lite-instruct-q3_K_S`
- Reviewer: OpenAI `gpt-4.1`
- Run folder: `docs/benchmarks/pilots/BP007B/runs/2026-03-14-deepseek-openai-run02`

## Scores
- Single-model taught: `3/10`
- Tiered quality-bar loop: `3/10`
- Final status: `fail-cap`
- Core pass reached: `no`
- Stretch pass reached: `no`

## Main result
- The constrained local runtime profile makes DeepSeek executable on this machine for the verifier-backed lane.
- That stability does not translate into a better benchmark result: the executor still fails the core bar and never reaches stretch review.

## Key interpretation
- The earlier T08 blocked-runtime state was a machine-profile issue, not a model-access issue.
- Under a stable CPU profile, DeepSeek still underperforms on this verifier-backed planning task.
- The next useful BP007B move is to switch to a smaller local executor rather than keep iterating on this lane.
