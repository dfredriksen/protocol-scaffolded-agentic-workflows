# BP007 Evaluator Worksheet Run 01

## Run metadata
- Run date: `2026-03-14`
- Evaluator: VP of Research / benchmark operator
- Executor model: Anthropic `claude-sonnet-4-6`
- Reviewer model: OpenAI `gpt-4.1`
- Task packet: `BP007-T1`

## Condition A: single-model taught baseline
- Final output path: `docs/benchmarks/pilots/BP007/runs/2026-03-14-anthropic-openai-run01/single-taught-final.md`
- Task completion score (`0-2`): `1`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `2`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `2`
- Corrective iterations: `1`
- Human interventions: `0`
- Notes: Strong reframing after validator feedback, but still includes invented held-out sealing logic and broader curriculum-cycle machinery than the BP007 packet requires.

## Condition B: protocol plus quality-bar loop
- Draft path: `docs/benchmarks/pilots/BP007/runs/2026-03-14-anthropic-openai-run01/loop-draft-01.md`
- Review memo path(s): `docs/benchmarks/pilots/BP007/runs/2026-03-14-anthropic-openai-run01/loop-review-01.md`
- Revision path(s): none
- Final status: `pass`
- Final output path: `docs/benchmarks/pilots/BP007/runs/2026-03-14-anthropic-openai-run01/loop-draft-01.md`
- Task completion score (`0-2`): `1`
- Validation quality score (`0-2`): `1`
- Protocol adherence score (`0-2`): `2`
- Rework burden score (`0-2`): `1`
- Transfer readiness score (`0-2`): `2`
- Review loops used: `0`
- Human interventions: `0`
- Notes: The reviewer passed the initial draft immediately. That shows convergence, but it also suggests the quality bar may be too permissive to force a meaningful second-pass improvement on a strong executor.

## Comparison summary
- Strongest condition: `tie`
- Did the loop reach `pass`? `Yes, immediately.`
- Did the loop beat the single-model taught condition? `No.`
- Were reviewer defects stable across loops? `Not applicable; no failing loop was generated.`
- Did the executor actually address failed bar items? `Not applicable.`
- Main observed differences: The single-model taught condition needed one validator revision and became more explicit about BP007 as an experiment. The loop condition converged faster, but not to a clearly stronger artifact.

## Closeout
- Recommendation:
  - mixed evidence
- Follow-on action: tighten the quality bar or run the loop on a weaker executor, where convergence pressure is more likely to surface meaningful differences.
