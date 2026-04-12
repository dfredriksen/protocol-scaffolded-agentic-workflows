# BP006 Evaluator Worksheet Run 04

## Run metadata
- Run date: `2026-03-14`
- Evaluator: VP of Research / benchmark operator
- Executor model: Anthropic `claude-sonnet-4-6`
- Reviewer model: OpenAI `gpt-4.1`
- Task packet: `BP006-T1`

## Condition A: executor-only weak baseline
- Output path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-anthropic-openai-run01/baseline-plan.md`
- Task completion score (`0-2`): `1`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `1`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `1`
- Corrective iterations: `0`
- Human interventions: `0`
- Notes: Stronger than Anthropic's older planning baseline; still uses invented artifact names and generic file conventions.

## Condition B: single-model taught
- Output path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-anthropic-openai-run01/single-taught-final.md`
- Task completion score (`0-2`): `1`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `2`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `2`
- Corrective iterations: `1`
- Human interventions: `0`
- Notes: Strong protocol skeleton and explicit validation gates; still anchored to invented repo artifact names.

## Condition C: executor-reviewer-correction
- Draft path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-anthropic-openai-run01/moe-executor-draft.md`
- Reviewer feedback path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-anthropic-openai-run01/moe-reviewer-feedback.md`
- Final output path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-anthropic-openai-run01/moe-executor-final.md`
- Task completion score (`0-2`): `2`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `2`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `2`
- Corrective iterations: `1`
- Human interventions: `0`
- Notes: Strongest condition in this pair. OpenAI critique improved traceability, dependency handling, and gate clarity, and Anthropic absorbed the critique effectively.

## Condition D: reviewer-takeover
- Draft path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-anthropic-openai-run01/moe-executor-draft.md`
- Reviewer feedback path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-anthropic-openai-run01/moe-reviewer-feedback.md`
- Final output path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-anthropic-openai-run01/moe-reviewer-takeover-final.md`
- Task completion score (`0-2`): `1`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `2`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `1`
- Corrective iterations: `1`
- Human interventions: `0`
- Notes: Cleaner than baseline, but more compressed and less operationally rich than Anthropic's corrected final.

## Comparison summary
- Strongest condition: `executor-reviewer-correction`
- Did correction beat single-model taught? `Yes.`
- Did takeover beat correction? `No.`
- Main observed differences: OpenAI review added sharper dependency gating and traceability expectations, and Anthropic actually absorbed that critique into a more complete final artifact.
- Authorship confounds: Takeover was helpful but not decisive here; the result is mainly a correction advantage, not a replacement advantage.
- Did the MoE architecture produce a meaningful improvement? `Yes, modestly but clearly in the correction condition.`

## Closeout
- Recommendation:
  - mixed evidence
- Follow-on action: fold BP006 into a synthesis memo now that four hosted-hosted pairs exist, before expanding into hybrid or xAI conditions.
