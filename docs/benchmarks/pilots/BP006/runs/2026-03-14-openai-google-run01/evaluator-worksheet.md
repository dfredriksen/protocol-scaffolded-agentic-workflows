# BP006 Evaluator Worksheet Run 03

## Run metadata
- Run date: `2026-03-14`
- Evaluator: VP of Research / benchmark operator
- Executor model: OpenAI `gpt-4.1`
- Reviewer model: Google `gemini-2.5-flash`
- Task packet: `BP006-T1`

## Condition A: executor-only weak baseline
- Output path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-openai-google-run01/baseline-plan.md`
- Task completion score (`0-2`): `1`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `0`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `1`
- Corrective iterations: `0`
- Human interventions: `0`
- Notes: Stable and coherent but generic, with weak repo-specific artifact grounding.

## Condition B: single-model taught
- Output path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-openai-google-run01/single-taught-final.md`
- Task completion score (`0-2`): `1`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `1`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `1`
- Corrective iterations: `1`
- Human interventions: `0`
- Notes: The taught condition improved structure and made artifact content expectations clearer.

## Condition C: executor-reviewer-correction
- Draft path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-openai-google-run01/moe-executor-draft.md`
- Reviewer feedback path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-openai-google-run01/moe-reviewer-feedback.md`
- Final output path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-openai-google-run01/moe-executor-final.md`
- Task completion score (`0-2`): `1`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `1`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `1`
- Corrective iterations: `1`
- Human interventions: `0`
- Notes: Gemini feedback was too thin to materially outperform the single-model taught condition. OpenAI revised cleanly, but not much was added beyond what the taught prompt already produced.

## Condition D: reviewer-takeover
- Draft path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-openai-google-run01/moe-executor-draft.md`
- Reviewer feedback path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-openai-google-run01/moe-reviewer-feedback.md`
- Final output path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-openai-google-run01/moe-reviewer-takeover-final.md`
- Task completion score (`0-2`): `1`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `1`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `1`
- Corrective iterations: `1`
- Human interventions: `0`
- Notes: Reviewer takeover also failed to beat the best existing condition. Gemini's final artifact remained generic and did not improve on OpenAI's own corrected structure.

## Comparison summary
- Strongest condition: `single-model taught` and `executor-reviewer-correction` tie
- Did correction beat single-model taught? `No.`
- Did takeover beat correction? `No.`
- Main observed differences: Gemini's critique was much less specific than Anthropic's or OpenAI's reviewer output. That reduced the value of both correction and takeover.
- Authorship confounds: Because the reviewer was weaker, takeover did not create the kind of authorship lift seen in the Gemini-executor/OpenAI-reviewer pair.
- Did the MoE architecture produce a meaningful improvement? `No; this pair mostly weakens the MoE claim when reviewer quality is lower than executor quality.`

## Closeout
- Recommendation:
  - mixed evidence
- Follow-on action: Run `claude-sonnet-4-6` executor with `gpt-4.1` reviewer to test whether OpenAI review stabilizes Anthropic's more drift-prone executor behavior.
