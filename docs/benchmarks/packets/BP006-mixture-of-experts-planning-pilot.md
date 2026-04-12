# BP006 - Mixture-Of-Experts Planning Pilot Packet

## Benchmark family
Planning-quality family with multi-model correction conditions

## Source teaching episode
- `docs/episodes/TE001-dapo-planning-loop.md`

## Purpose
Test whether a two-model executor-plus-reviewer architecture improves planning quality beyond both a weak executor-only baseline and a single-model taught condition on the same repository planning task.

## Task statement
Given a medium/high complexity repository task, produce an execution plan that is specific enough for immediate implementation and review, then compare whether a second model acting as reviewer changes outcome quality materially.

## Candidate task archetypes
- research-repo protocol update with follow-on artifacts
- benchmark or evaluation design for a coding workflow
- planning packet for a new benchmark branch with retained outputs

## Allowed tools
- repo file inspection
- shell commands
- markdown document editing
- planning and review artifacts

## Role-control rule
- The executor is the initial author in all conditions.
- The reviewer may critique only in the correction condition.
- The reviewer becomes the final author only in the takeover condition.
- Authorship must be explicit in retained artifacts so correction is not confused with replacement.

## Conditions
### A. Executor-only weak baseline
Prompt the executor model to create a plan using only the task objective and repo guardrails.

### B. Single-model taught condition
Provide `docs/process/planning-protocol.md` to one model and require the standard plan-and-refine loop.

### C. Executor-reviewer-correction condition
1. Executor produces a draft.
2. Reviewer critiques the executor draft against the planning protocol and repo grounding.
3. The original executor revises its own draft using that critique.

### D. Reviewer-takeover condition
1. Executor produces a draft.
2. Reviewer critiques the draft.
3. Reviewer also writes the final revised plan and is labeled as final author.

## Required outputs
- executor baseline prompt and output
- single-model taught prompt, draft, validator feedback, and final output
- executor draft for the MoE lane
- reviewer feedback
- executor-revised final output
- reviewer-takeover final output
- score summary and evaluator worksheet

## Validation method
- Score all conditions with `docs/benchmarks/scoring-rubric-v1.md`.
- Compare not only final score but also:
  - whether critique identifies real errors rather than rewriting the task
  - whether executor revision actually absorbs critique
  - whether takeover gains are mostly attributable to stronger second-model authorship
  - whether the MoE loop preserves repo grounding better than the single-model taught lane

## Pairing policy
- Start with a compact pairing set.
- Prefer one strong executor plus two reviewers before exploring many combinations.
- Hold the primary task fixed while changing architecture.
- Log hybrid, hosted-hosted, and open-weight-hosted combinations separately.

## Transfer variant
Repeat the same architecture comparison on a second planning task only after one primary-task pairing shows a clear improvement over the single-model taught condition.

## Retained outputs
- prompts used for each role and condition
- executor draft
- reviewer feedback
- executor-revised final artifact
- reviewer-takeover final artifact
- evaluator notes on authorship and confounds
- final score summary

## Known confounds
- reviewer improvement may simply reflect a stronger second model
- a reviewer can silently rewrite the task instead of critiquing it
- comparison becomes misleading if role prompts are not frozen tightly
- a strong single-model taught condition may already capture most of the achievable gain

## Pilot completion bar
- At least one executor-reviewer pair is run across all four conditions.
- All authorship transitions are retained explicitly.
- Results are summarized without claiming that MoE is better unless it clearly beats the single-model taught condition.
