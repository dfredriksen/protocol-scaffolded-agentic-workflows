# H008 - L2 Reviewer Checklist V1

## Purpose
Provide a one-page checklist for the distinct human reviewer performing hosted `L2` review.

## Scope

Review only the hosted matrix:

- `BP001` hosted runs
- `BP002` hosted runs

Do not review local/open-weight runs in this pass.

## Step 1. Confirm the review setup

- You are acting as a distinct human `L2` reviewer.
- Your task is to score the hosted matrix from frozen artifacts only.
- In plain language: you are grading the quality of the run outputs, not grading whether the AI sounds confident, praises itself, or comments on its own prompt.
- Do not edit run artifacts or silently repair them.
- Do not use any LLM, AI assistant, or automated judge to help score, summarize, interpret, rewrite, or compare the artifacts in this review.
- This exercise must be human graded.

## Step 2. Read these first

Open the reviewer `.docx` packet folder first:

- reviewer packet folder: `https://drive.google.com/open?id=1S6uU406Fk50Hn1NwzbLoWXM8b6iofVqi&usp=drive_fs`
- parent human `L2` bundle folder: `https://drive.google.com/open?id=1a7HY_NQId1IPpk7wDgJa90iQwUfEXR9k&usp=drive_fs`

Read these `.docx` files in order:

- `H007-l2-review-kickoff-note.docx`
- `H005-l2-reviewer-assignment-packet.docx`
- `H008-l2-reviewer-checklist-v1.docx`
- `H011-reviewer-readme-v1.docx`
- `H012-human-l2-review-attachment-index-v1.docx`
- `l2-hosted-execution-bundle-v1.docx`
- `l2-review-handoff-protocol.docx`
- `scoring-rubric-v1.docx`

Review artifacts location:

- use the `review-artifacts` folder inside the parent human `L2` bundle folder
- score the copied frozen artifacts from Drive, not repo-relative paths

## Step 3. Review these frozen run folders

Use the run identifiers defined in `l2-hosted-execution-bundle-v1.docx`.
Do not substitute different runs.

### BP001
- `review-artifacts/BP001/2026-03-13-openai-run01`
- `review-artifacts/BP001/2026-03-13-google-run01`
- `review-artifacts/BP001/2026-03-13-anthropic-run01`

### BP002
- `review-artifacts/BP002/2026-03-13-openai-run01`
- `review-artifacts/BP002/2026-03-13-google-run01`
- `review-artifacts/BP002/2026-03-13-anthropic-run01`

## Step 4. Score from artifacts only

- score both conditions from the frozen artifacts only
- do not edit any run artifact
- record uncertainty explicitly
- if the artifact is self-referential, score the underlying work product, not the self-reference
- use the rubric, not free-form impressions
- if an artifact is missing, ambiguous, or malformed, record that as a review note instead of repairing it
- judge the condition that better satisfies the benchmark requirements, not the condition that merely looks longer or more polished
- preserve any disagreement with the original evaluation rather than smoothing it away

## Step 5. Fill these outputs

Open these templates from the reviewer `.docx` packet folder:

- `review-pass-worksheet-template.docx`
- `blinded-review-worksheet-template.docx` if blinding is used
- `l2-hosted-review-summary-template.docx`

For each reviewed run, capture at least:

- benchmark family and run ID
- baseline score
- taught score
- stronger condition
- confidence or uncertainty note
- any artifact ambiguity, confound, or scoring caveat

## Step 6. Save results here

- parent folder: `https://drive.google.com/open?id=1a7HY_NQId1IPpk7wDgJa90iQwUfEXR9k&usp=drive_fs`
- output subfolder: `l2-hosted-matrix`

Minimum outputs:

- one consolidated hosted review summary
- per-run review memos or equivalent notes
- completed worksheets
- reviewer identity
- independence level
- date of review completion

## Step 7. Only after scoring, optionally compare against `L2A`

Secondary model-review summary:

- `review-artifacts/optional-l2a-comparison/l2a-hosted-summary-v1.md`

Use this only after your own independent scoring is complete.

## Step 8. Record disagreements explicitly

- state whether you agree with the original stronger condition
- state whether you agree with the score magnitude
- write down any artifact ambiguity or confound instead of smoothing it away
- if a run cannot be scored cleanly, say that directly and state why

## Completion condition

The hosted `L2` review is complete when:

- outputs exist under `docs/benchmarks/reviews/l2-hosted-matrix/`
- agreements or disagreements are explicit
- independence level is stated

## Reporting rule

- this is human `L2 distinct internal evaluator` review
- Anthropic `L2A` is supportive secondary review only
- if the packet was delivered as `.docx`, preserve the same filenames and output structure where practical
- the reviewer packet folder is the primary access route; do not rely on repo-relative markdown paths during human review
- do not use LLM assistance at any stage of the review itself
- the `review-artifacts` folder is the authoritative source for the frozen hosted run materials in the Drive handoff
