# BP007B Evaluator Worksheet Run 02

## Run metadata
- Run date: `2026-03-14`
- Evaluator: VP of Research / benchmark operator
- Executor model: Ollama `deepseek-coder-v2:16b-lite-instruct-q3_K_S`
- Reviewer model: Ollama `llama3.2:3b`
- Task packet: `BP007B-T1`

## Method note
- This run reuses the same weak DeepSeek executor lane as `T01`; the main change is reviewer strictness, not executor variation.

## Condition A: single-model taught baseline
- Final output path: `docs/benchmarks/pilots/BP007B/runs/2026-03-14-deepseek-llama32-run01/single-taught-final.md`
- Score (`0-10`): `4`
- Notes: Same weak baseline as `T01`.

## Condition B: tiered quality-bar loop
- Draft path: `loop-draft-01.md`
- Core review path(s): `loop-review-01.md`
- Stretch review path: `stretch-review.md`
- Final status: `pass-core`
- Final output path: `loop-draft-01.md`
- Score (`0-10`): `5`
- Core pass reached: `yes`
- Stretch pass reached: `no`
- Loops to core pass: `0`
- Loops to stretch pass: not reached
- Notes: The local reviewer passes the initial artifact at the core level, but the same artifact clearly fails the stretch bar. This is a more useful all-local result than the flat BP007 pass because it preserves the distinction between adequacy and excellence.

## Comparison summary
- Did the pair reach `pass-core`? `Yes.`
- Did the pair reach `pass-stretch`? `No.`
- Did the pair beat the single-model taught baseline? `Yes, modestly.`
- Did the tiered bar produce better convergence than the flat BP007 bar? `Yes, diagnostically.`
- Main observed differences: The local reviewer still appears lenient on core adequacy, but the stretch review prevents us from mistaking that for a `10/10`-grade result.

## Closeout
- Recommendation:
  - mixed evidence
- Follow-on action: run `T03` or compare `T01` and `T02` directly to quantify the effect of reviewer strictness under the tiered bar.
