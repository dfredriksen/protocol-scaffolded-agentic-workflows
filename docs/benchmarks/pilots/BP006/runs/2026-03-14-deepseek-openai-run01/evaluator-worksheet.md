# BP006 Evaluator Worksheet Run 05

## Run metadata
- Run date: `2026-03-14`
- Evaluator: VP of Research / benchmark operator
- Executor model: Ollama `deepseek-coder-v2:16b-lite-instruct-q3_K_S`
- Reviewer model: OpenAI `gpt-4.1`
- Task packet: `BP006-T1`

## Condition A: executor-only weak baseline
- Output path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-deepseek-openai-run01/baseline-plan.md`
- Task completion score (`0-2`): `0`
- Validation quality score (`0-2`): `0`
- Protocol adherence score (`0-2`): `0`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `1`
- Corrective iterations: `0`
- Human interventions: `0`
- Notes: The executor stays in markdown, but invents generic files and does not engage the repository's actual benchmark workflow.

## Condition B: single-model taught
- Output path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-deepseek-openai-run01/single-taught-final.md`
- Task completion score (`0-2`): `0`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `1`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `0`
- Corrective iterations: `1`
- Human interventions: `0`
- Notes: The model uses more structure after self-critique, but it remains off-repo and fails to convert the protocol into grounded benchmark planning.

## Condition C: executor-reviewer-correction
- Draft path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-deepseek-openai-run01/moe-executor-draft.md`
- Reviewer feedback path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-deepseek-openai-run01/moe-reviewer-feedback.md`
- Final output path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-deepseek-openai-run01/moe-executor-final.md`
- Task completion score (`0-2`): `1`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `1`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `1`
- Corrective iterations: `1`
- Human interventions: `0`
- Notes: OpenAI critique materially improves repo grounding and introduces actual checkpoint logic, but the DeepSeek revision still remains broad and partially placeholder-driven.

## Condition D: reviewer-takeover
- Draft path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-deepseek-openai-run01/moe-executor-draft.md`
- Reviewer feedback path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-deepseek-openai-run01/moe-reviewer-feedback.md`
- Final output path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-deepseek-openai-run01/moe-reviewer-takeover-final.md`
- Task completion score (`0-2`): `1`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `2`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `1`
- Corrective iterations: `1`
- Human interventions: `0`
- Notes: The stronger cloud reviewer produces the cleanest final artifact in this pair. It is still compressed, but it is more coherent and more repo-grounded than the local executor's own revision.

## Comparison summary
- Strongest condition: `reviewer-takeover`
- Did correction beat single-model taught? `Yes.`
- Did takeover beat correction? `Yes, slightly.`
- Main observed differences: The OpenAI reviewer identifies the local executor's generic drift sharply, and DeepSeek can absorb some of that feedback. The strongest gain, however, comes when the reviewer becomes final author.
- Authorship confounds: Present by design in the takeover condition. This run supports the claim that cloud review can rescue a weaker open-weight executor, but the best result here is replacement-leaning rather than pure critique absorption.
- Did the MoE architecture produce a meaningful improvement? `Yes, modestly but clearly.`

## Closeout
- Recommendation:
  - mixed evidence
- Follow-on action: use this as the first hybrid proof point, then test an open-weight reviewer over an open-weight executor to see whether the fallback architecture can produce a similar gain without cloud dependence.
