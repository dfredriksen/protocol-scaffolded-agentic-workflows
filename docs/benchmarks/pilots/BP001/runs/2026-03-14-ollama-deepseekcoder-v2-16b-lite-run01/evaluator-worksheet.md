# BP001 Evaluator Worksheet

## Run
- Model: `deepseek-coder-v2:16b-lite-instruct-q3_K_S`
- Runtime: `Ollama`
- Run folder: `docs/benchmarks/pilots/BP001/runs/2026-03-14-ollama-deepseekcoder-v2-16b-lite-run01`

## Baseline scoring
- Completion quality: `0/3`
- Validation and checkpointing: `0/2`
- Protocol structure: `0/2`
- Rework burden: `1/2`
- Transfer readiness: `0/1`
- Total: `1/10`

Notes:
- The baseline remained heavily misaligned with the repository's markdown benchmark workflow.
- It drifted into participant management, repository-access operations, code-review workflow, and artifact-repository language that is outside the intended task surface.

## Taught scoring
- Completion quality: `1/3`
- Validation and checkpointing: `1/2`
- Protocol structure: `1/2`
- Rework burden: `0/2`
- Transfer readiness: `1/1`
- Total: `4/10`

Notes:
- The taught condition improved structure and artifact naming.
- The plan remained generic and did not ground itself tightly enough in the repo's actual markdown benchmark workflow.
- The validator substep itself failed to complete reliably, so the final answer did not benefit from a real revision loop.

## Interpretation
- This run is a valid negative comparator for the open-weight branch.
- It still shows within-model uplift under the taught protocol.
- It does not justify transfer or workflow expansion.
