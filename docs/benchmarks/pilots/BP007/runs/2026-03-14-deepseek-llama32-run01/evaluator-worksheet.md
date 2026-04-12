# BP007 Evaluator Worksheet Run 03

## Run metadata
- Run date: `2026-03-14`
- Evaluator: VP of Research / benchmark operator
- Executor model: Ollama `deepseek-coder-v2:16b-lite-instruct-q3_K_S`
- Reviewer model: Ollama `llama3.2:3b`
- Task packet: `BP007-T1`

## Method note
- The single-model taught condition is held constant with the same DeepSeek baseline used in `Q03`, so the main difference here is reviewer quality and convergence behavior.

## Condition A: single-model taught baseline
- Final output path: `docs/benchmarks/pilots/BP007/runs/2026-03-14-deepseek-llama32-run01/single-taught-final.md`
- Task completion score (`0-2`): `0`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `1`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `1`
- Corrective iterations: `1`
- Human interventions: `0`
- Notes: Same weak single-model taught result as `Q03`; structured but generic and weakly grounded.

## Condition B: protocol plus quality-bar loop
- Draft path: `docs/benchmarks/pilots/BP007/runs/2026-03-14-deepseek-llama32-run01/loop-draft-01.md`
- Review memo path(s): `loop-review-01.md`, `loop-review-02.md`
- Revision path(s): `loop-revision-01.md`
- Final status: `pass`
- Final output path: `docs/benchmarks/pilots/BP007/runs/2026-03-14-deepseek-llama32-run01/loop-revision-01.md`
- Task completion score (`0-2`): `0`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `1`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `2`
- Review loops used: `1`
- Human interventions: `0`
- Notes: The all-local loop reached `pass`, but the result appears to reflect a weaker reviewer standard more than a strong final artifact.

## Comparison summary
- Strongest condition: `protocol plus quality-bar loop`
- Did the loop reach `pass`? `Yes.`
- Did the loop beat the single-model taught condition? `Only modestly.`
- Were reviewer defects stable across loops? `Yes, but fewer and lighter than in Q03.`
- Did the executor actually address failed bar items? `Partially, enough for the local reviewer to pass it.`
- Main observed differences: The local reviewer asked for fewer, narrower changes than OpenAI did in `Q03`, and the executor satisfied those within one revision. The final artifact still remains generic in absolute terms.

## Closeout
- Recommendation:
  - mixed evidence
- Follow-on action: compare `Q03` and `Q04` directly to separate true all-local convergence from reviewer leniency.
