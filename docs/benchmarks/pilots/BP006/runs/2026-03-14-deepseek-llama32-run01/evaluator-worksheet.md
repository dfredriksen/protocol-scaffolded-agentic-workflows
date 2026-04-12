# BP006 Evaluator Worksheet Run 06

## Run metadata
- Run date: `2026-03-14`
- Evaluator: VP of Research / benchmark operator
- Executor model: Ollama `deepseek-coder-v2:16b-lite-instruct-q3_K_S`
- Reviewer model: Ollama `llama3.2:3b`
- Task packet: `BP006-T1`

## Method note
- Conditions A and B reuse the same DeepSeek executor prompts and outputs as the hybrid comparison so the main difference in this run is reviewer architecture, not executor drift.

## Condition A: executor-only weak baseline
- Output path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-deepseek-llama32-run01/baseline-plan.md`
- Task completion score (`0-2`): `0`
- Validation quality score (`0-2`): `0`
- Protocol adherence score (`0-2`): `0`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `1`
- Corrective iterations: `0`
- Human interventions: `0`
- Notes: Same weak baseline as the hybrid DeepSeek run: markdown-shaped but generic and not truly repo-grounded.

## Condition B: single-model taught
- Output path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-deepseek-llama32-run01/single-taught-final.md`
- Task completion score (`0-2`): `0`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `1`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `0`
- Corrective iterations: `1`
- Human interventions: `0`
- Notes: Same weak self-taught result as the hybrid DeepSeek run: more structure, but still off-repo.

## Condition C: executor-reviewer-correction
- Draft path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-deepseek-llama32-run01/moe-executor-draft.md`
- Reviewer feedback path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-deepseek-llama32-run01/moe-reviewer-feedback.md`
- Final output path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-deepseek-llama32-run01/moe-executor-final.md`
- Task completion score (`0-2`): `1`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `1`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `0`
- Corrective iterations: `1`
- Human interventions: `0`
- Notes: Local reviewer feedback improves the executor slightly, but the corrected final is still abstract and generic.

## Condition D: reviewer-takeover
- Draft path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-deepseek-llama32-run01/moe-executor-draft.md`
- Reviewer feedback path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-deepseek-llama32-run01/moe-reviewer-feedback.md`
- Final output path: `docs/benchmarks/pilots/BP006/runs/2026-03-14-deepseek-llama32-run01/moe-reviewer-takeover-final.md`
- Task completion score (`0-2`): `1`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `1`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `0`
- Corrective iterations: `1`
- Human interventions: `0`
- Notes: The local reviewer writes a cleaner summary than the executor revision, but still invents a project-management feature path rather than grounding itself in Quantyra-Teaching.

## Comparison summary
- Strongest condition: `executor-reviewer-correction` and `reviewer-takeover` tie
- Did correction beat single-model taught? `Yes, modestly.`
- Did takeover beat correction? `No.`
- Main observed differences: A local reviewer helps a weak local executor somewhat, but the gain is smaller than the hybrid OpenAI-reviewer path and still leaves major repo-grounding errors.
- Authorship confounds: Present but not decisive here because the local takeover final is only slightly cleaner than the executor revision.
- Did the MoE architecture produce a meaningful improvement? `Yes, but smaller than the hybrid pair.`

## Closeout
- Recommendation:
  - mixed evidence
- Follow-on action: compare this run directly against the DeepSeek plus OpenAI reviewer run to quantify how much reviewer quality matters in the resilience setting.
