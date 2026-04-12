# Methods Reporting Checklist for Journal Submission v1

Date: 2026-03-15  
Scope: journal-oriented reporting requirements for the current manuscript package

## Purpose

This checklist defines the minimum methods transparency needed before the manuscript should be treated as journal-ready. It is intended to drive paper revision, appendix construction, and review against selective-reporting and replication concerns.

## 1. Model And Runtime Identification

- Name every model exactly as executed.
- Report provider or local runtime path for each model.
- Report relevant runtime version or local serving environment where applicable.
- Distinguish hosted API models from local/open-weight models explicitly.
- State hardware constraints for local runs when those constraints affect behavior.

## 2. Condition Definition

- Define `baseline`, `taught`, `correction`, `takeover`, `quality-bar loop`, `pass-core`, and `pass-stretch` explicitly.
- State what content was supplied in each condition and what was withheld.
- Make clear that the taught condition currently injects an explicit reusable protocol artifact.
- Separate protocol injection from self-generated protocol-learning claims.

## 3. Task And Packet Reporting

- Identify the benchmark family and packet version for every reported run.
- State whether the task is planning, workflow, transfer, live-tool, or local workflow quality-bar.
- Report any important packet clarifications that changed later reruns.
- State when a result comes from a clarified rerun rather than the first attempted artifact chain.

## 4. Scoring And Evaluation

- Define the score scale and rubric dimensions used for each branch.
- State who performed scoring at each level (`L0`, `L1`, `L2` when available).
- Report whether second-pass review agreed with initial scoring.
- State how disagreements are handled when independent review exists.
- Avoid implying evaluator independence when most branch scoring is still operator-side.

## 5. Run Accounting

- Report the branch-level run universe, not only the synthesized subset.
- Distinguish retained, superseded, blocked, and planned runs.
- State why a run is the current evidence-bearing run if earlier runs exist.
- Explain partial branch completion where applicable, especially for BP006.

## 6. Selection And Replacement Logic

- Define `retained` in external-facing language.
- State when runs were replaced because of packet ambiguity, runtime invalidity, or clarified policy.
- Do not imply exhaustive search when only a structured subset is complete.

## 7. Loop And Review Procedures

- Report loop caps for reviewer-driven revision protocols.
- State reviewer role and allowed actions in correction versus takeover conditions.
- Report final loop status (`pass`, `fail-cap`, `blocked`, `pass-core`, `pass-stretch`) where used.
- State whether reviewer judgments are verifier-backed or purely language-model judgments.

## 8. Failure Handling

- Report runtime failures honestly.
- State whether failures are methodological, account-side, runtime-side, or packet-side.
- Keep blocked or invalid runs in the audit trail when they materially affect interpretation.
- Do not silently omit unstable local runs.

## 9. Hosted Versus Local Interpretation

- State that hosted evidence is the primary publication surface.
- State that local evidence is bounded resilience evidence.
- Avoid treating hosted-local differences as precise estimates of capability-tier loss.
- Explain when reviewer quality or runtime constraints differ across hosted and local branches.

## 10. Construct Validity

- Define what `teaching` means operationally in this manuscript.
- State that the current main evidence is about performance uplift under externalized reusable protocol artifacts.
- Reserve stronger durable-learning language for branches that actually test self-generated protocol reuse.
- Keep the construct-validity threat visible in the manuscript body, not only internal memos.

## 11. Replication-Relevant Detail

- Report exact model identifiers.
- Report packet references.
- Report retained artifact locations or appendix equivalents.
- Report enough details that a distinct evaluator could reproduce the reported condition family.

## 12. Journal-Ready Threshold

The manuscript should not be treated as journal-ready until:

- hosted `L2` results are integrated
- run-accounting and retained-selection logic are exposed clearly
- the construct around `teaching` is tightened
- branch scope is narrowed to a coherent main thesis

## Current Status

The hosted human `L2` results are now integrated. The source memo's score table is also transcribed structurally into repo-local form. The remaining journal-readiness work is narrower: final editorial cleanup and submission packaging.

## Current Use

This checklist should be used to guide:

- manuscript revision
- appendix planning
- venue-specific submission preparation
- internal review before journal submission
