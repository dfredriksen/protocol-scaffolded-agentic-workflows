# BP006 Evaluator Worksheet Run 02

## Run metadata
- Run date: `2026-03-14`
- Evaluator: VP of Research / benchmark operator
- Executor model: Google `gemini-2.5-flash`
- Reviewer model: OpenAI `gpt-4.1`
- Task packet: `BP006-T1`

## Condition A: executor-only weak baseline
- Output path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-google-openai-run01/baseline-plan.md`
- Task completion score (`0-2`): `1`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `0`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `1`
- Corrective iterations: `0`
- Human interventions: `0`
- Notes: Generic BP002 framing with invented folder structure and weak repo grounding, but still a complete plan.

## Condition B: single-model taught
- Output path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-google-openai-run01/single-taught-final.md`
- Task completion score (`0-2`): `1`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `1`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `1`
- Corrective iterations: `1`
- Human interventions: `0`
- Notes: The taught lane improved structure and dependency naming, but Gemini still stayed close to its own invented artifact surface.

## Condition C: executor-reviewer-correction
- Draft path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-google-openai-run01/moe-executor-draft.md`
- Reviewer feedback path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-google-openai-run01/moe-reviewer-feedback.md`
- Final output path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-google-openai-run01/moe-executor-final.md`
- Task completion score (`0-2`): `1`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `1`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `1`
- Corrective iterations: `1`
- Human interventions: `0`
- Notes: OpenAI critique helped, but Gemini only partially absorbed it. The final answer remained drift-prone and still invented repo paths.

## Condition D: reviewer-takeover
- Draft path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-google-openai-run01/moe-executor-draft.md`
- Reviewer feedback path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-google-openai-run01/moe-reviewer-feedback.md`
- Final output path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-google-openai-run01/moe-reviewer-takeover-final.md`
- Task completion score (`0-2`): `1`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `2`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `1`
- Corrective iterations: `1`
- Human interventions: `0`
- Notes: Strongest condition in this pair. OpenAI takeover converted critique into a cleaner artifact set and clearer checkpoint discipline than Gemini's self-revision.

## Comparison summary
- Strongest condition: `reviewer-takeover`
- Did correction beat single-model taught? `No, not clearly.`
- Did takeover beat correction? `Yes.`
- Main observed differences: OpenAI critique improved specificity, but Gemini revision only partially incorporated it. When OpenAI became the final author, the plan became more disciplined and artifact-explicit.
- Authorship confounds: The result is clearly influenced by stronger-reviewer final authorship, so it should be interpreted as a takeover effect rather than pure critique-plus-revision success.
- Did the MoE architecture produce a meaningful improvement? `Yes, but mainly in reviewer-takeover rather than correction.`

## Closeout
- Recommendation:
  - mixed evidence
- Follow-on action: Run `gpt-4.1` executor with `gemini-2.5-flash` reviewer to test whether weaker reviewer quality suppresses the effect when the executor is stronger.
