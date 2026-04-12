# Hosted L2 Summary V1

## Status
- reviewer: Fernanda De La O
- independence level: L2 Distinct Human Evaluator
- review date: 2026-04-01
- review artifact status: completed human memo; repo-local structural transcription of the source score table now exists, with the source `.docx` still preserved as the controlling artifact
- source bundle: `docs/benchmarks/l2-hosted-execution-bundle-v1.md`
- source memo: `docs/benchmarks/reviews/l2-hosted-matrix/fernanda-review-memo-2026-04-01.docx`
- score-table transcription: `docs/benchmarks/reviews/l2-hosted-matrix/fernanda-score-table-transcription-v1.md`

## Overall outcome
- overall agreement with stronger condition: the reviewer narrative supports `taught` as the stronger condition across the hosted BP001/BP002 six-run slice
- overall agreement with score magnitude: partial agreement; the narrative preserves meaningful uplift in favor of `taught`, and the source table's exact column totals are now transcribed locally, but the rubric-row labels are still not promoted beyond the source memo
- number of score changes: exact count of per-condition disagreements is still not promoted because the source memo does not expose a publication-clean condition-by-condition comparison table
- remaining ambiguities: the reviewer notes limited ability to independently verify some intermediate steps and external-file access from frozen artifacts alone

## Run-by-run summary

| Run | Original stronger condition | `L2` stronger condition | Original score | `L2` score | Agreement status | Notes |
| --- | --- | --- | --- | --- | --- | --- |
| BP001 OpenAI run01 | taught | taught | baseline 3, taught 9 | column total 6 | agree on stronger condition | baseline remained weaker; taught improved but still showed weaker task focus than ideal |
| BP001 Google run01 | taught | taught | baseline 3, taught 7 | column total 7 | agree on stronger condition | improvement over baseline, but both conditions introduced unsupported assumptions and did not stay fully grounded |
| BP001 Anthropic run01 | taught | taught | baseline 1, taught 8 | column total 4 | agree on stronger condition | baseline hallucinated clearly; taught improved but remained somewhat imprecise |
| BP002 OpenAI run01 | taught | taught | baseline 5, taught 9 | column total 6 | agree on stronger condition | baseline failed, while taught showed substantial recovery and materially better output |
| BP002 Google run01 | taught | taught | baseline 8, taught 9 | column total 8 | agree on stronger condition | outputs were largely correct, though full validation of intermediate steps remained limited |
| BP002 Anthropic run01 | taught | taught | baseline 8, taught 9 | column total 8 | agree on stronger condition | reviewer saw notable improvement and materially better accuracy than BP001, with some uncertainty about external-file access |

## Hosted claim status after `L2`
- unchanged / strengthened / weakened: strengthened directionally; the completed human `L2` memo supports the same stronger-condition pattern as the operator-side review and the completed `L2A` pass, and the source table's exact column totals are now transcribed locally

## Required manuscript follow-on
- tables: update hosted-review references to reflect that a completed human `L2` memo now exists
- claim matrix: update evaluator-independence language to reflect completed distinct human review
- manuscript prose: replace the still-pending human-`L2` caveat with the narrower residual caveat that the memo's score table still needs clean repo-local transcription
- figure captions: confirm whether any hosted-review caption language changes materially after memo integration

## Notes
- The downloaded memo includes a narrative summary plus an embedded score table. The narrative is explicit enough to support `taught` as the stronger condition on all six runs.
- The source `.docx` remains the controlling human-review artifact, and the repo-local transcription should be treated as a verified structural transcription of the source table rather than a replacement for the original memo.
- Do not overwrite original operator-side artifacts; record differences explicitly.
