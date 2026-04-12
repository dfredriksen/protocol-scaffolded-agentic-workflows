# BP007B Evaluator Worksheet Run 02

## Run metadata
- Run date: `2026-03-14`
- Evaluator: VP of Research / benchmark operator
- Executor model: Ollama `deepseek-coder-v2:16b-lite-instruct-q3_K_S`
- Reviewer model: OpenAI `gpt-4.1`
- Task packet: `BP007B-T1`

## Method note
- This run repeats the DeepSeek plus OpenAI verifier-backed lane under a constrained local runtime profile to separate model quality from runtime instability.

## Condition A: single-model taught baseline
- Final output path: `docs/benchmarks/pilots/BP007B/runs/2026-03-14-deepseek-openai-run02/single-taught-final.md`
- Score (`0-10`): `3`
- Notes:
  - The single-model taught artifact is generic, truncated, and weakly grounded in the repo.
  - The constrained profile made the run stable, but the final artifact quality remained low.

## Condition B: tiered quality-bar loop
- Draft path: `loop-draft-01.md`
- Core review path(s): `loop-review-01.md`, `loop-review-02.md`
- Stretch review path: not reached
- Final status: `fail-cap`
- Final output path: `loop-revision-01.md`
- Score (`0-10`): `3`
- Core pass reached: `no`
- Stretch pass reached: `no`
- Loops to core pass: not reached
- Loops to stretch pass: not reached
- Notes:
  - The core-bar diagnosis remains clear.
  - The constrained runtime profile removes the hardware confound.
  - The executor still fails to produce a repo-grounded, dependency-aware plan with retained-output expectations.

## Comparison summary
- Did the pair reach `pass-core`? `No.`
- Did the pair reach `pass-stretch`? `No.`
- Did the pair beat the single-model taught baseline? `No.`
- Did the verifier-backed constrained rerun improve on the earlier DeepSeek plus OpenAI tiered-bar result? `No meaningful improvement.`

## Closeout
- Recommendation:
  - weak evidence
- Follow-on action:
  - do not keep iterating on this executor for BP007B
  - use a smaller local executor for the next verifier-backed follow-on
