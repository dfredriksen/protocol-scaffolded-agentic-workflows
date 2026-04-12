# Anthropic LLM-as-Judge Best Practices v1

Date: 2026-03-15  
Scope: best-practice constraints for using Anthropic models as secondary benchmark reviewers

## Purpose

This note defines how Anthropic models should be used as `LLM-as-judge` reviewers for the hosted benchmark matrix. It does not authorize relabeling model-based review as human distinct-evaluator `L2`. Instead, it establishes a separate `L2A` path: a model-based secondary review layer that can strengthen the evaluation surface while remaining explicitly narrower than human independent review.

## Position

Anthropic-based judging is useful for:

- structured second-pass review
- consistency checks against the current operator-side scoring
- faster detection of disagreement or rubric instability

Anthropic-based judging is not equivalent to:

- distinct human evaluator review
- blinded human adjudication
- final publication-grade independence by itself

## Working Label

Use:

- `L2A hosted model review`

Do not use:

- `L2 distinct internal evaluator`

## Best-Practice Rules

### 1. Use explicit rubrics

The judge should score against the existing benchmark rubric, not free-form impressions. The current rubric already supports this with five dimensions and a `0/1/2` scale.

### 2. Blind the condition labels where practical

The reviewing model should evaluate `Condition X` and `Condition Y`, not `baseline` and `taught`, in the primary scoring step. This reduces straightforward condition-label bias.

### 3. Separate scoring from agreement comparison

The reviewing model should first score the conditions independently from artifacts. Agreement with the original stronger condition should be computed after that independent score exists, not used to anchor the score itself.

### 4. Preserve structured output

The reviewing model should return machine-parseable output with:

- per-dimension scores
- totals
- stronger condition
- difference magnitude
- key observed behaviors
- uncertainty notes

This keeps the review auditable and reduces post hoc interpretation drift.

### 5. Keep reviewer prompts clear and direct

Anthropic’s own prompt guidance favors clear, direct instructions with explicit expectations. The judge prompt should therefore:

- state the rubric directly
- forbid hidden-assistance assumptions
- require evidence-based scoring
- require uncertainty logging

### 6. Treat model judging as iterative and calibratable

OpenAI’s public evaluation guidance stresses that graders should be calibrated iteratively with edge cases and that grader prompts should be tested against known examples. This logic applies here as well. The first Anthropic review pass should therefore be treated as a calibratable review surface, not as a final immutable grader.

### 7. Guard against position and label bias

LLM-as-judge literature has shown position bias and order sensitivity. For this repo, the minimum mitigation is:

- blind the condition labels
- record the label map outside the scoring output
- keep the original score artifacts unchanged

### 8. Do not overclaim agreement

If Anthropic review agrees with the operator-side scores, that strengthens the review surface, but it still does not replace the need for human distinct review if the manuscript continues to claim human-style evaluator independence.

## Current Recommendation

Use Anthropic review as:

- a structured `L2A` reviewer layer for the hosted matrix
- a way to tighten the pre-submission packet
- a precursor or complement to later human `L2`

Do not present it as:

- the final resolution of the independence problem

## Source Basis

This note is grounded in:

- Anthropic guidance on clear, direct prompting and evaluation tooling
- OpenAI guidance on evaluation best practices and grader design
- LLM-as-judge literature documenting both usefulness and bias risk

## References

- Anthropic prompt guidance: https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/be-clear-and-direct
- Anthropic evaluation tool: https://docs.anthropic.com/en/docs/test-and-evaluate/eval-tool
- OpenAI evaluation best practices: https://platform.openai.com/docs/guides/evaluation-best-practices
- OpenAI graders guide: https://platform.openai.com/docs/guides/graders
- Zheng et al., *Judging LLM-as-a-Judge with MT-Bench and Chatbot Arena*: https://arxiv.org/abs/2306.05685
- Chen et al., *Judging the Judges: A Systematic Study of Position Bias in LLM-as-a-Judge*: https://arxiv.org/abs/2406.07791
