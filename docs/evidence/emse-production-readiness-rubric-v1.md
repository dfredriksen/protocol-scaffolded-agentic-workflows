# EMSE Production Readiness Rubric V1

Date: 2026-04-11  
Target venue: `Empirical Software Engineering`

## Purpose

Replace the current subjective "looks ready" posture with an explicit production-readiness gate for the Teaching manuscript.

## Source Basis

This rubric is anchored to the official `EMSE` and Springer author guidance, plus the repository's own claim-traceability requirements.

Primary sources:

- `EMSE` aims and scope: https://link.springer.com/journal/10664/aims-and-scope
- `EMSE` submission guidelines: https://link.springer.com/journal/10664/submission-guidelines

The official source basis contributes the following non-optional requirements:

- empirical software-engineering relevance
- complete editable submission files in `.docx` or LaTeX
- 150 to 250 word abstract
- 4 to 6 keywords
- references in author-year style
- separate title-page declarations including funding, competing interests, data/materials/code availability, and author contributions
- supplementary information and data-availability handling where relevant

The repository contributes the following manuscript-specific requirements:

- every major claim must map to an identified evidence surface
- hosted evidence must remain the primary results spine
- local evidence must remain bounded resilience support
- retained and superseded logic must be exposed rather than implied

## Scoring Scale

- `0 = fail`: missing, misleading, or materially incomplete
- `1 = partial`: present but still not strong enough for confident submission
- `2 = pass`: present, explicit, and consistent with the current paper

## Criteria

### C1. Scope Fit

Pass standard:

- the paper reads as an empirical software-engineering study
- practical workflow relevance is explicit
- the main thesis is not diluted by unrelated side theses

### C2. Formal EMSE Compliance

Pass standard:

- abstract is within the `150-250` word limit
- manuscript includes `4-6` keywords
- references are present and use author-year style
- a separate title-page declarations document is complete, not just drafted
- editable `.docx` upload files exist for the main paper and supplement

### C3. Claim-Evidence Traceability

Pass standard:

- every major claim in the manuscript maps to a retained evidence source
- tables and prose use the same claim boundaries
- no claim relies on an undocumented subset or silent rerun policy

### C4. Methods And Transparency

Pass standard:

- model identifiers, condition definitions, scoring procedures, and reviewer roles are explicit
- retained-versus-superseded logic is defined
- run accounting is visible in the manuscript or supplement
- local runtime constraints are stated where they affect interpretation

### C5. Evaluation Rigor And Independence

Pass standard:

- operator-side scoring is disclosed honestly
- human `L2` and model-based `L2A` are distinguished clearly
- adjudication and remaining ambiguities are described conservatively
- the paper does not overclaim from reviewer evidence

### C6. Supplement And Artifact Completeness

Pass standard:

- the submission packet contains a real supplement, not just a supplement plan
- the supplement covers condition definitions, run accounting, retained logic, reviewer procedures, and data/materials posture
- the supplement is consistent with the main manuscript and tables

### C7. Scholarly Framing And Presentation

Pass standard:

- internal program language is translated into external scholarly prose
- related work is present and relevant to the journal target
- the manuscript reads like a journal paper rather than an internal packet

### C8. Submission Controls

Pass standard:

- cover letter is drafted
- signoff record exists and is ready for final approval
- bundle manifest matches the actual packet contents
- the paper can be submitted without relying on undocumented operator memory

## Decision Rule

The paper is `truly ready for submission` only when:

- every criterion scores at least `1`
- `C2`, `C3`, `C4`, `C5`, and `C6` all score `2`
- total score is at least `14/16`

Any `0` is an automatic no-submit result.

## Current Evaluation

| Criterion | Score | Reason |
| --- | --- | --- |
| `C1` Scope Fit | `2` | The manuscript is now clearly framed as an empirical software-engineering study of protocolized agent workflows. |
| `C2` Formal EMSE Compliance | `2` | The manuscript now has keywords, references, a separate populated title-page declarations artifact, and editable `.docx` files for the main paper and supplement. |
| `C3` Claim-Evidence Traceability | `2` | The main claims remain tied to the hosted synthesis, local synthesis, `BP006` synthesis, and hosted `L2` materials. |
| `C4` Methods And Transparency | `2` | The manuscript and supplement now expose model identities, run accounting, retained logic, reviewer roles, and local constraints. |
| `C5` Evaluation Rigor And Independence | `2` | Human `L2` and `L2A` are separated correctly and the remaining caution is limited to rubric-row semantics. |
| `C6` Supplement And Artifact Completeness | `2` | The packet now contains a real manuscript supplement rather than only an appendix plan. |
| `C7` Scholarly Framing And Presentation | `2` | The manuscript now has explicit related work, references, clearer journal framing, and materially less internal program language than the earlier packet. |
| `C8` Submission Controls | `1` | The packet, signoff record, and cover letter exist, but staffed signoff and final visual upload inspection are not yet complete. |

Current total: `15/16`

## Current Outcome

The paper now clears the `truly ready` threshold under the hard rubric.

Remaining operational gates:

- complete staffed signoff
- perform one final visual inspection of the submission-facing `.docx` files
