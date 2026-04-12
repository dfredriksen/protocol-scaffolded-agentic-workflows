# Ollama Qwen2.5 3B BP001 Evaluator Worksheet Run 01

## Run metadata
- Run date: 2026-03-13
- Evaluator: Codex
- Agent/model: Ollama `qwen2.5:3b`
- Task packet: `BP001-T1`

## Condition A: weak-prompt baseline
- Output path: `docs/benchmarks/pilots/BP001/runs/2026-03-13-ollama-qwen25-3b-run01/baseline-plan.md`
- Task completion score (`0-2`): 0
- Validation quality score (`0-2`): 0
- Protocol adherence score (`0-2`): 0
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 0
- Corrective iterations: 0
- Human interventions: 0
- Notes: The baseline is detailed but plans the wrong kind of work. It invents databases, user training, and enterprise pilot execution instead of planning repository-local benchmark execution and artifact retention.

## Condition B: taught-protocol
- Output path: `docs/benchmarks/pilots/BP001/runs/2026-03-13-ollama-qwen25-3b-run01/taught-plan-final.md`
- Task completion score (`0-2`): 1
- Validation quality score (`0-2`): 1
- Protocol adherence score (`0-2`): 2
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 1
- Corrective iterations: 1
- Human interventions: 0
- Notes: The taught condition adopts the planning skeleton and includes validator feedback plus a scorecard, but it still drifts badly toward generic rollout language and fails to anchor itself to existing repo artifacts like retained run folders and markdown scoring outputs.

## Comparison summary
- Stronger condition: taught-protocol
- Main observed differences: The taught condition introduces explicit planning structure, risks, dependencies, and a revision loop. The baseline is less structured and equally misaligned to the repository task.
- Confounds: same-operator scoring, local-model latency, and the planning protocol being embedded directly in the taught prompt
- Did the taught protocol produce a meaningful improvement? Yes, but only structurally. Task fidelity remained weak.

## Closeout
- Recommendation:
  - mixed evidence
- Follow-on action:
  - keep the result as open-weight smoke evidence only
  - run the taught condition again later only if a narrower repository-anchoring instruction is permitted
