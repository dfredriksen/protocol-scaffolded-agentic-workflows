# Ollama Qwen2.5 3B BP001 Evaluator Worksheet Run 02

## Run metadata
- Run date: 2026-03-13
- Evaluator: Codex
- Agent/model: Ollama `qwen2.5:3b`
- Task packet: `BP001-T1`
- Run type: tighter rerun with stronger repository-anchoring constraints

## Condition A: weak-prompt baseline
- Output path: `docs/benchmarks/pilots/BP001/runs/2026-03-13-ollama-qwen25-3b-run02/baseline-plan.md`
- Task completion score (`0-2`): 1
- Validation quality score (`0-2`): 0
- Protocol adherence score (`0-2`): 0
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 1
- Corrective iterations: 0
- Human interventions: 0
- Notes: The tighter baseline stays closer to the repository task than run 01 and names run folders, evaluator worksheets, score summaries, and comparison memos. It still remains generic, uses awkward placeholders such as "Run 1" and "Run 2," and does not anchor itself to the existing benchmark packets or closeout sequence with enough specificity.

## Condition B: taught-protocol
- Output path: `docs/benchmarks/pilots/BP001/runs/2026-03-13-ollama-qwen25-3b-run02/taught-plan-final.md`
- Task completion score (`0-2`): 1
- Validation quality score (`0-2`): 1
- Protocol adherence score (`0-2`): 2
- Rework burden score (`0-2`): 1
- Transfer readiness score (`0-2`): 1
- Corrective iterations: 1
- Human interventions: 0
- Notes: The taught condition again shows real structural uplift: it adds a validator pass, risks, dependencies, fallback paths, and a scorecard. It is tighter than run 01, but the revision still fails to purge generic model-training language and never cleanly turns the plan into the repository's existing markdown benchmark workflow.

## Comparison summary
- Stronger condition: taught-protocol
- Main observed differences: The baseline improved materially once repository-only guardrails were added, but it still reads like a loose execution checklist. The taught condition remains stronger because it preserves the plan-and-refine loop and explicit control surfaces, even though the final output still carries generic language that should not appear in a fully grounded repository plan.
- Confounds: same-operator scoring; the tighter rerun adds extra repository guardrails to both conditions; the planning protocol is embedded directly in the taught prompt; local open-weight latency may reduce revision quality.
- Did the taught protocol produce a meaningful improvement? Yes, but the gain is still mainly structural rather than fully task-faithful.

## Closeout
- Recommendation:
  - keep as improved smoke evidence
- Follow-on action:
  - treat run 02 as the primary `qwen2.5:3b` reference point
  - do not claim strong low-parameter task mastery from this model based on BP001 alone
