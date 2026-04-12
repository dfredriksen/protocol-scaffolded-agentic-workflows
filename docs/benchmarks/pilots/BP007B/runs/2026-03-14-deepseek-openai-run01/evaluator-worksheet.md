# BP007B Evaluator Worksheet Run 01

## Run metadata
- Run date: `2026-03-14`
- Evaluator: VP of Research / benchmark operator
- Executor model: Ollama `deepseek-coder-v2:16b-lite-instruct-q3_K_S`
- Reviewer model: OpenAI `gpt-4.1`
- Task packet: `BP007B-T1`

## Method note
- This run reuses the same weak DeepSeek executor lane explored in BP007 Q03 so the main difference is the bar shape, not fresh executor noise.

## Condition A: single-model taught baseline
- Final output path: `docs/benchmarks/pilots/BP007B/runs/2026-03-14-deepseek-openai-run01/single-taught-final.md`
- Score (`0-10`): `4`
- Notes: The single-model taught baseline remains weakly grounded and below the intended quality target.

## Condition B: tiered quality-bar loop
- Draft path: `loop-draft-01.md`
- Core review path(s): `loop-review-01.md`, `loop-review-02.md`
- Stretch review path: not reached
- Final status: `fail-cap`
- Final output path: `loop-revision-01.md`
- Score (`0-10`): `4`
- Core pass reached: `no`
- Stretch pass reached: `no`
- Loops to core pass: not reached
- Loops to stretch pass: not reached
- Notes: The core bar is clearer and narrower than the flat BP007 bar, but the executor still failed to satisfy it under strong review.

## Comparison summary
- Did the pair reach `pass-core`? `No.`
- Did the pair reach `pass-stretch`? `No.`
- Did the pair beat the single-model taught baseline? `No.`
- Did the tiered bar produce better convergence than the flat BP007 bar? `No clear improvement.`
- Main observed differences: The tiered bar gives a cleaner diagnosis of what is missing, but it did not change the weak executor's final score or convergence outcome under `gpt-4.1` review.

## Closeout
- Recommendation:
  - mixed evidence
- Follow-on action: compare against the local reviewer under the same tiered bar, since the bar shape alone did not rescue this executor.
