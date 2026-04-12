# Open-Weight Run Sheet V1

## Purpose
Track the low-parameter uplift subtrack separately from the required hosted-model compact matrix.

| Lane | Runtime | Model name | Quantization | Benchmark | Condition | Run folder | Status | Score | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| very small instruct | Ollama | qwen2.5:3b | default Ollama | BP001 | baseline | `docs/benchmarks/pilots/BP001/runs/2026-03-13-ollama-qwen25-3b-run02` | scored | `3/10` | tighter rerun with repository-only guardrails; improved grounding but still generic relative to the repo's actual benchmark workflow |
| very small instruct | Ollama | qwen2.5:3b | default Ollama | BP001 | taught | `docs/benchmarks/pilots/BP001/runs/2026-03-13-ollama-qwen25-3b-run02` | scored | `6/10` | structural uplift remains real, but the final revision still carries generic language and should be treated as improved smoke evidence rather than a stable lane |
| small coding-capable | Ollama | qwen2.5-coder:3b | default Ollama | BP001 | baseline | `docs/benchmarks/pilots/BP001/runs/2026-03-13-ollama-qwen25-coder-3b-run01` | scored | `3/10` | tighter than the very-small baseline, but still generic and weakly tied to actual repo artifacts |
| small coding-capable | Ollama | qwen2.5-coder:3b | default Ollama | BP001 | taught | `docs/benchmarks/pilots/BP001/runs/2026-03-13-ollama-qwen25-coder-3b-run01` | scored | `5/10` | structural uplift is present, but the validator loop did not materially improve the final answer |
| mid-sized open weight | Ollama | llama3.1:8b | default Ollama | BP001 | baseline | `docs/benchmarks/pilots/BP001/runs/2026-03-13-ollama-llama31-8b-run01` | scored | `3/10` | strongest open-weight baseline prose so far, but still leaks into off-repo pilot operations |
| mid-sized open weight | Ollama | llama3.1:8b | default Ollama | BP001 | taught | `docs/benchmarks/pilots/BP001/runs/2026-03-13-ollama-llama31-8b-run01` | scored | `6/10` | strongest open-weight taught result so far; revision uptake improved, but it only matches the current ceiling |
| small Llama-family | Ollama | llama3.2:3b | default Ollama | BP001 | baseline | `docs/benchmarks/pilots/BP001/runs/2026-03-14-ollama-llama32-3b-run01` | scored | `3/10` | concise and artifact-aware, but still invents scripts and data-folder mechanics that are not part of the repo workflow |
| small Llama-family | Ollama | llama3.2:3b | default Ollama | BP001 | taught | `docs/benchmarks/pilots/BP001/runs/2026-03-14-ollama-llama32-3b-run01` | scored | `6/10` | meaningful revision uptake and a valid small-Llama comparison point, but it only matches the current taught ceiling |
| larger coding-family comparator | Ollama | deepseek-coder-v2:16b-lite-instruct-q3_K_S | `q3_K_S` | BP001 | baseline | `docs/benchmarks/pilots/BP001/runs/2026-03-14-ollama-deepseekcoder-v2-16b-lite-run01` | scored | `1/10` | badly misaligned baseline; drifted into participant/code-review workflow instead of repo-native benchmark planning |
| larger coding-family comparator | Ollama | deepseek-coder-v2:16b-lite-instruct-q3_K_S | `q3_K_S` | BP001 | taught | `docs/benchmarks/pilots/BP001/runs/2026-03-14-ollama-deepseekcoder-v2-16b-lite-run01` | scored | `4/10` | structural uplift is present, but validator-step instability and weak repo grounding make this a negative comparator rather than an expansion candidate |

## Current interpretation
- The low-parameter uplift lane is now partially execution-ready.
- One small local model has been validated successfully on the current machine.
- A second small local model class is now validated successfully on the current machine.
- The current limiting factor is disk headroom, so the open-weight branch should proceed one model at a time and may still be temporarily blocked even after a successful model pull.
- BP001 remains the first benchmark to execute on open-weight models.
- The first `qwen2.5:3b` BP001 smoke run showed structural protocol uplift but weak repository grounding.
- A tighter rerun improved baseline grounding and is now the primary reference point for `qwen2.5:3b`, but the lane still counts as mixed smoke evidence rather than strong low-parameter support.
- The next active open-weight lane is `qwen2.5-coder:3b` on BP001.
- The first `qwen2.5-coder:3b` BP001 run is modestly positive: stronger than baseline, but not strong enough yet to justify assuming transfer.
- The direct comparison between the two retained BP001 runs is captured in `docs/benchmarks/open-weight-bp001-comparison-2026-03-13.md`.
- Current recommendation: freeze both as mixed BP001 evidence and only continue the open-weight branch with a different model if it can plausibly clear the present taught ceiling.
- `llama3.1:8b` has now been added as a mid-sized control and currently matches, but does not clearly beat, the open-weight taught ceiling at `6/10`.
- `llama3.2:3b` now provides a small Llama-family comparison point and also matches, but does not exceed, the open-weight taught ceiling at `6/10`.
- `deepseek-coder-v2:16b-lite-instruct-q3_K_S` now provides a larger coding-family negative comparator and underperforms the existing ceiling despite a positive taught delta.
- The DeepSeek validator substep was itself unstable, which is useful evidence: the teach-and-revise loop did not complete reliably even when the taught prompt improved structure.
