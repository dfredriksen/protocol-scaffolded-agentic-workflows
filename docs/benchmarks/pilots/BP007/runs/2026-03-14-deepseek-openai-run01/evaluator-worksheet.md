# BP007 Evaluator Worksheet Run 02

## Run metadata
- Run date: `2026-03-14`
- Evaluator: VP of Research / benchmark operator
- Executor model: Ollama `deepseek-coder-v2:16b-lite-instruct-q3_K_S`
- Reviewer model: OpenAI `gpt-4.1`
- Task packet: `BP007-T1`

## Condition A: single-model taught baseline
- Final output path: `docs/benchmarks/pilots/BP007/runs/2026-03-14-deepseek-openai-run01/single-taught-final.md`
- Task completion score (`0-2`): `0`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `1`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `1`
- Corrective iterations: `1`
- Human interventions: `0`
- Notes: The single-model taught path remains generic, weakly grounded, and only partially improved by self-critique.

## Condition B: protocol plus quality-bar loop
- Draft path: `docs/benchmarks/pilots/BP007/runs/2026-03-14-deepseek-openai-run01/loop-draft-01.md`
- Review memo path(s): `loop-review-01.md`, `loop-review-02.md`
- Revision path(s): `loop-revision-01.md`
- Final status: `fail-cap`
- Final output path: `docs/benchmarks/pilots/BP007/runs/2026-03-14-deepseek-openai-run01/loop-revision-01.md`
- Task completion score (`0-2`): `0`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `1`
- Rework burden score (`0-2`): `0`
- Transfer readiness score (`0-2`): `1`
- Review loops used: `2`
- Human interventions: `0`
- Notes: The loop exposed real blocking defects and the executor failed to clear them within the cap. That is more informative than the immediate-pass hosted case, even though the final artifact is not stronger.

## Comparison summary
- Strongest condition: `tie`
- Did the loop reach `pass`? `No.`
- Did the loop beat the single-model taught condition? `No.`
- Were reviewer defects stable across loops? `Yes, largely.`
- Did the executor actually address failed bar items? `Only partially.`
- Main observed differences: The loop surfaced stable reviewer complaints about concrete objectives, repo-area mapping, and fallback expectations. The weak executor could not satisfy those constraints within the allowed cycles.

## Closeout
- Recommendation:
  - mixed evidence
- Follow-on action: use this pair to tighten the BP007 interpretation. The loop is doing real governance work here, but the current executor is too weak to clear the bar without either more loops or a stronger reviewer-guided revision pattern.
