# BP007B Llama 3.2 3B Executor + OpenAI Reviewer Run 05 Score Summary

## Metadata
- Packet: `BP007B-T1`
- Executor: Ollama `llama3.2:3b`
- Reviewer: OpenAI `gpt-4.1`
- Run folder: `docs/benchmarks/pilots/BP007B/runs/2026-03-14-llama32-openai-run05`

## Scores
- Single-model taught: `4/10`
- Tiered quality-bar loop: `4/10`
- Final status: `pass-core`
- Core pass reached: `yes`
- Stretch pass reached: `no`

## Main result
- `T07` is the first fresh local artifact to run end to end through the verifier-backed stretch gate.
- The artifact avoids fabricated repo specifics, survives to `pass-core`, and still fails stretch after one repair.

## Key interpretation
- The reviewer-side false-positive problem is fixed.
- `llama3.2:3b` can satisfy the corrected gate at the core level, but not at stretch quality.
- This is enough evidence to stop iterating on this executor and shift the next verifier-backed run to a different local model.
