# Ollama Llama 3.1 8B BP001 Evaluator Worksheet Run 01

## Run metadata
- Run date: 2026-03-13
- Evaluator: Codex
- Agent/model: Ollama `llama3.1:8b`
- Task packet: `BP001-T1`
- Prompt wrapper: tighter repository-only guardrails adapted from the prior open-weight reruns

## Condition A: weak-prompt baseline
- Output path: `docs/benchmarks/pilots/BP001/runs/2026-03-13-ollama-llama31-8b-run01/baseline-plan.md`
- Task completion score (`0-2`): 1
- Validation quality score (`0-2`): 0
- Protocol adherence score (`0-2`): 0
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 1
- Corrective iterations: 0
- Human interventions: 0
- Notes: The baseline is cleaner prose than the smaller open-weight models, but it still drifts into pilot teams, shared drives, cloud storage, and external evaluator operations rather than staying within the repository's markdown execution surface.

## Condition B: taught-protocol
- Output path: `docs/benchmarks/pilots/BP001/runs/2026-03-13-ollama-llama31-8b-run01/taught-plan-final.md`
- Task completion score (`0-2`): 1
- Validation quality score (`0-2`): 1
- Protocol adherence score (`0-2`): 2
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 1
- Corrective iterations: 1
- Human interventions: 0
- Notes: The taught condition is the first open-weight lane that materially responds to validator criticism. It replaces several vague elements with repo-local dependencies and artifacts. However, it still collapses too much of the workflow into abstract repository maintenance, and some of the bias-control language remains unrealistic for this benchmark family.

## Comparison summary
- Stronger condition: taught-protocol
- Main observed differences: Relative to the baseline, the taught condition is more disciplined, more artifact-aware, and better at revising after critique. The baseline remains more operationally concrete, but for the wrong level of abstraction and with several off-repo assumptions.
- Confounds: same-operator scoring; tighter repository guardrails changed the prompts relative to the original BP001 packet; protocol embedding directly favors structural compliance; 8B local inference is slow enough that revision cost itself is part of the runtime story.
- Did the taught protocol produce a meaningful improvement? Yes. This is the strongest open-weight revision result so far, but it still falls short of a truly repository-executable plan.

## Closeout
- Recommendation:
  - keep as the strongest open-weight BP001 point so far
- Follow-on action:
  - compare directly against the `qwen2.5:3b` ceiling before deciding whether the open-weight branch has earned transfer
