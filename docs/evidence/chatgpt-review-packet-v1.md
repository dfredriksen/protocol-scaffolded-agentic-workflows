# ChatGPT Review Packet V1

Date: 2026-04-11  
Target manuscript: `Protocol-Mediated Uplift in Agentic Workflows: Cross-Provider Evidence and Bounded Local Resilience`  
Target venue: `Empirical Software Engineering`

## Purpose

Provide a clean review packet for a final external-style review in ChatGPT Pro before journal submission.

## Review Objective

Review the manuscript as if preparing it for primary journal submission. The review should focus on production quality, empirical rigor, scope control, clarity, and venue fit. The goal is not encouragement or summary praise. The goal is to identify any remaining issues that would materially weaken the paper in peer review.

## Files To Review

Primary file:

- `EMSE_main_manuscript.docx`

Supporting files:

- `EMSE_title_page_and_declarations.docx`
- `ESM_1.pdf`
- `EMSE_cover_letter.docx`

## Ground Rules

- Treat the manuscript as an empirical software-engineering paper, not as a general AI manifesto.
- Assume the hosted evidence is the primary empirical spine.
- Treat the local/open-weight evidence as bounded resilience support only.
- Do not suggest broadening the claims beyond what the retained evidence supports.
- Prefer precision over enthusiasm.
- Flag anything that reads as internal-program language rather than journal prose.
- Flag any place where the paper overstates evaluator independence, reproducibility, or generality.

## Evaluation Criteria

Use these criteria when reviewing:

1. Scope fit for `EMSE`
2. Abstract quality and framing
3. Clarity of main thesis
4. Related-work adequacy
5. Methods transparency
6. Claim-evidence alignment
7. Results clarity
8. Threats-to-validity honesty
9. Discussion and conclusion discipline
10. Data/materials availability clarity
11. Table readability and integration
12. Overall submission readiness

## Required Review Output

Return the review in this structure:

### Verdict

Choose one:

- `submit`
- `submit after minor revision`
- `major revision before submission`
- `not submission-ready`

### Findings

List findings ordered by severity. For each finding, include:

- severity: `high`, `medium`, or `low`
- section or artifact
- the problem
- the concrete fix

### Questions

List any unresolved questions that block confident submission.

### Positive Checks

List the strongest elements that already read as publishable.

### Final Recommendation

State clearly whether the paper should be submitted now, submitted after a short cleanup pass, or held.

## Paste-In Prompt

Use the following prompt with ChatGPT Pro:

```text
You are acting as a strict journal-readiness reviewer for an Empirical Software Engineering submission.

Review the attached manuscript packet as if it were about to be submitted to EMSE. Do not optimize for politeness. Optimize for truthful pre-submission review quality.

Constraints:
- Treat this as an empirical software-engineering paper.
- Hosted evidence is the main empirical spine.
- Local/open-weight evidence is bounded resilience support only.
- Do not recommend broadening claims beyond the evidence.
- Flag any overclaim, unclear methods reporting, weak related-work framing, weak validity discussion, weak table integration, or journal-unfriendly prose.

Evaluate against:
1. scope fit for EMSE
2. abstract quality and framing
3. clarity of main thesis
4. related-work adequacy
5. methods transparency
6. claim-evidence alignment
7. results clarity
8. threats-to-validity honesty
9. discussion and conclusion discipline
10. data/materials availability clarity
11. table readability and integration
12. overall submission readiness

Return your review in this exact structure:

Verdict:
- one of: submit / submit after minor revision / major revision before submission / not submission-ready

Findings:
- ordered by severity
- for each finding include severity, section/artifact, the problem, and the concrete fix

Questions:
- unresolved questions that block confident submission

Positive Checks:
- strongest elements that already read as publishable

Final Recommendation:
- one short paragraph stating whether to submit now, submit after a short cleanup pass, or hold
```

## Use Rule

Use this packet for final pre-submission review only. Do not let a model review replace the existing human-review and signoff process.
