# Score Summary

- Model: `deepseek-coder-v2:16b-lite-instruct-q3_K_S`
- Runtime: `Ollama`
- Benchmark: `BP001`
- Run folder: `docs/benchmarks/pilots/BP001/runs/2026-03-14-ollama-deepseekcoder-v2-16b-lite-run01`

## Result
- Baseline: `1/10`
- Taught: `4/10`
- Delta: `+3`

## Short interpretation
- DeepSeek provides a useful negative comparison point for the local open-weight branch.
- The taught condition produced structural improvement, but the model remained weakly grounded in the repository task.
- The validator-stage instability is itself part of the result: the protocol loop did not complete reliably.
