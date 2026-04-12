# BP006 Evaluator Worksheet Run 01

## Run metadata
- Run date: `2026-03-14`
- Evaluator: VP of Research / benchmark operator
- Executor model: OpenAI `gpt-4.1`
- Reviewer model: Anthropic `claude-sonnet-4-6`
- Task packet: `BP006-T1`

## Condition A: executor-only weak baseline
- Output path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-openai-anthropic-run01/baseline-plan.md`
- Task completion score (`0-2`): `1`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `0`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `1`
- Corrective iterations: `0`
- Human interventions: `0`
- Notes: Structurally coherent but generic, with invented artifact names and only weak repo grounding.

## Condition B: single-model taught
- Output path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-openai-anthropic-run01/single-taught-final.md`
- Task completion score (`0-2`): `1`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `1`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `1`
- Corrective iterations: `1`
- Human interventions: `0`
- Notes: Better structure and explicit revision, but still drifts into nonexistent repo docs, templates, and rubric files.

## Condition C: executor-reviewer-correction
- Draft path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-openai-anthropic-run01/moe-executor-draft.md`
- Reviewer feedback path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-openai-anthropic-run01/moe-reviewer-feedback.md`
- Final output path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-openai-anthropic-run01/moe-executor-final.md`
- Task completion score (`0-2`): `1`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `2`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `1`
- Corrective iterations: `1`
- Human interventions: `0`
- Notes: Strongest condition in this pair. Anthropic critique materially improved dependency, checkpoint, and fallback specificity, even though some file paths remain hallucinated.

## Condition D: reviewer-takeover
- Draft path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-openai-anthropic-run01/moe-executor-draft.md`
- Reviewer feedback path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-openai-anthropic-run01/moe-reviewer-feedback.md`
- Final output path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-openai-anthropic-run01/moe-reviewer-takeover-final.md`
- Task completion score (`0-2`): `1`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `1`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `1`
- Corrective iterations: `1`
- Human interventions: `0`
- Notes: More concise than correction, but not clearly better. The reviewer also hallucinated repo paths and did not convert critique into a clearly stronger final artifact.

## Comparison summary
- Strongest condition: `executor-reviewer-correction`
- Did correction beat single-model taught? `Yes, modestly.`
- Did takeover beat correction? `No.`
- Main observed differences: Anthropic review was sharper than the self-validator, especially on blocking dependencies, checkpoint duplication, and critique of generic artifact naming. OpenAI revision absorbed some of that structure. Reviewer takeover did not translate the sharper critique into a clearly better final plan.
- Authorship confounds: Both MoE finals still contain hallucinated repo paths, so the result is architectural signal rather than publication-grade evidence.
- Did the MoE architecture produce a meaningful improvement? `Yes, but only a mixed pilot improvement in the correction condition.`

## Closeout
- Recommendation:
  - mixed evidence
- Follow-on action: Run one reverse-pair comparison, preferably `gemini-2.5-flash` executor with `gpt-4.1` reviewer, to test whether the gain comes from critique quality rather than from a strong executor.
