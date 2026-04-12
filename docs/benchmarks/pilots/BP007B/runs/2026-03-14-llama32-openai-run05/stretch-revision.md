# Stretch Revision

## Objective
Advance the verifier-backed BP007B branch using only real repo artifacts and retained benchmark evidence.

## Revised plan
1. Use [docs/benchmarks/packets/BP007B-tiered-quality-bar-loop-pilot.md](C:\Users\Dan\Desktop\Projects\Quantyra-Teaching\docs\benchmarks\packets\BP007B-tiered-quality-bar-loop-pilot.md) as the controlling packet for the next local verifier-backed run.
2. Update [docs/benchmarks/bp007b-run-sheet-v1.md](C:\Users\Dan\Desktop\Projects\Quantyra-Teaching\docs\benchmarks\bp007b-run-sheet-v1.md) with the fresh retained result so the branch distinguishes `pass-core` from failed stretch attempts under verifier-backed review.
3. Use [stories/S059-bp007b-verifier-backed-review.md](C:\Users\Dan\Desktop\Projects\Quantyra-Teaching\stories\S059-bp007b-verifier-backed-review.md) as the process anchor for the verifier-backed reviewer requirement.
4. Update [logs/checkpoint.json](C:\Users\Dan\Desktop\Projects\Quantyra-Teaching\logs\checkpoint.json) so the next local executor shift is explicit.
5. Compare the fresh result against the retained verifier-backed baseline in [docs/benchmarks/pilots/BP007B/runs/2026-03-14-llama32-openai-run03/score-summary.md](C:\Users\Dan\Desktop\Projects\Quantyra-Teaching\docs\benchmarks\pilots\BP007B\runs\2026-03-14-llama32-openai-run03\score-summary.md) and [docs/benchmarks/pilots/BP007B/runs/2026-03-14-llama32-openai-run04/score-summary.md](C:\Users\Dan\Desktop\Projects\Quantyra-Teaching\docs\benchmarks\pilots\BP007B\runs\2026-03-14-llama32-openai-run04\score-summary.md) to show that fabricated specificity is no longer the path to a stretch pass.

## Retained outputs
- fresh run folder contents for the verifier-backed local attempt
- updated BP007B run sheet entry for `T07`
- updated checkpoint note identifying the next local executor shift

## Validation
- verify all named files exist in the repo
- verify the run is classified as `pass-core` rather than `pass-stretch`
- verify the next-step decision is to change executor, not keep iterating on the same artifact
