# Open-Weight BP001 Comparison - 2026-03-13

## Purpose
Compare the retained open-weight BP001 lanes before deciding whether any local model has earned expansion into transfer or workflow benchmarks.

## Compared runs
- Very small instruct lane:
  - `docs/benchmarks/pilots/BP001/runs/2026-03-13-ollama-qwen25-3b-run02`
- Small coding-capable lane:
  - `docs/benchmarks/pilots/BP001/runs/2026-03-13-ollama-qwen25-coder-3b-run01`
- Mid-sized open-weight lane:
  - `docs/benchmarks/pilots/BP001/runs/2026-03-13-ollama-llama31-8b-run01`
- Small Llama-family lane:
  - `docs/benchmarks/pilots/BP001/runs/2026-03-14-ollama-llama32-3b-run01`
- Larger coding-family comparator lane:
  - `docs/benchmarks/pilots/BP001/runs/2026-03-14-ollama-deepseekcoder-v2-16b-lite-run01`

## Score comparison
| Model | Baseline | Taught | Delta | Primary strength | Primary weakness |
| --- | --- | --- | --- | --- | --- |
| `qwen2.5:3b` | `3/10` | `6/10` | `+3` | stronger relative uplift after tighter repo anchoring | weak absolute fidelity to the repo's markdown benchmark workflow |
| `qwen2.5-coder:3b` | `3/10` | `5/10` | `+2` | cleaner and tighter baseline than the very-small model | poor revision uptake; validator feedback barely changed the final plan |
| `llama3.1:8b` | `3/10` | `6/10` | `+3` | best validator uptake and strongest open-weight taught revision quality so far | still too abstract and not clearly repository-executable |
| `llama3.2:3b` | `3/10` | `6/10` | `+3` | best small-Llama balance so far between speed, revision uptake, and artifact awareness | still invents some script/data mechanics and does not clearly exceed the ceiling |
| `deepseek-coder-v2:16b-lite-instruct-q3_K_S` | `1/10` | `4/10` | `+3` | some structural uplift under the taught protocol | baseline badly misaligned, and validator-loop instability prevented a clean revision cycle |

## Main findings
- All five open-weight models show a real within-model teaching effect on BP001.
- The very-small instruct model, the mid-sized Llama model, and the small Llama-family model currently share the highest taught score at `6/10`.
- `qwen2.5:3b` reached that ceiling mostly through stronger relative uplift after tighter anchoring.
- `llama3.1:8b` reached the same ceiling through better revision uptake and cleaner protocol use, but it still stopped short of a fully repository-executable plan.
- `llama3.2:3b` reached the same ceiling with faster turnaround than `llama3.1:8b` and cleaner revision behavior than the coding-capable 3B lane, but it still did not clearly exceed the existing ceiling.
- The coding-capable 3B model did not yet justify its lane label on this task. Its baseline was somewhat cleaner, but the taught condition underused the validator loop and failed to convert that structure into a more grounded final plan.
- The DeepSeek coding-family comparator underperformed even the weaker local lanes. It still improved under teaching, but the validator-stage instability itself became part of the negative result.
- The current evidence supports the core low-parameter claim only in a limited form:
  - protocol teaching can improve weaker open-weight models structurally
  - but the present models still struggle to turn that structure into high-fidelity repository planning
  - and at least one larger local coding-family model remained unstable inside the revision loop itself

## Decision
- Freeze all five BP001 results as mixed pilot evidence.
- Do not run transfer on any of these models yet.
- Do not expand any of these models into BP002 or BP003 yet.
- Keep `qwen2.5:3b` as the stronger very-small smoke point.
- Keep `qwen2.5-coder:3b` as the first coding-capable comparison point, but not as a promotion-ready lane.
- Keep `llama3.1:8b` as the strongest open-weight revision case so far, but not as a model that has clearly cleared the expansion gate.
- Keep `llama3.2:3b` as the strongest small-Llama comparison point so far, but not as a model that has clearly cleared the expansion gate.
- Keep `deepseek-coder-v2:16b-lite-instruct-q3_K_S` as a useful negative coding-family comparison point, but not as a promotion-ready lane.

## Recommended next step
- If the open-weight branch continues, prefer trying a different model rather than iterating further on these five.
- The next candidate should earn expansion only if its BP001 taught condition clearly exceeds the current ceiling of `6/10`.
- If local-model work is deprioritized, the cleaner protocol move is to leave the open-weight branch frozen at these five BP001 points and return attention to `L2` review or BP005 design.
