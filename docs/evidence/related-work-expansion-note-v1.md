# Related Work Expansion Note V1

Date: 2026-03-15  
Target venue: `Empirical Software Engineering`

## Purpose

Record the related-work structure that should be added before journal submission. The manuscript currently has a defensible empirical spine, but it still needs a more explicit external scholarly framing.

## Why This Matters

The current draft reads more like a strong internal empirical packet than a finished journal paper. For `EMSE`, the manuscript should situate itself against prior work in:

- empirical software engineering
- evaluation of LLM-based software agents
- workflow and governance patterns for agentic systems
- LLM-as-judge and reviewer-based evaluation methods

## Recommended Related Work Sections

### 1. Agentic Software Engineering And Workflow Reliability

This section should cover work on:

- software-engineering uses of LLM agents
- workflow control, approval handling, and handoff structure
- empirical observations that agent failures often arise from process discipline rather than raw capability alone

## Main purpose

Show that the paper belongs in a software-engineering conversation about dependable workflow execution, not only in a generic LLM prompting conversation.

### 2. Prompting, Scaffolding, And Externalized Procedure

This section should cover work on:

- prompt scaffolding
- structured prompting
- reusable procedural guidance
- chain-of-thought alternatives where external structure matters more than hidden reasoning claims

## Main purpose

Clarify that this paper is not claiming novel prompting in the broadest sense. It is claiming that reusable externalized procedure can function as a structured intervention with measurable workflow effects.

### 3. Evaluation Methodology For Agentic Systems

This section should cover work on:

- benchmark design for agents
- workflow-oriented evaluation
- transfer tasks
- evaluation under reviewer or validator loops

## Main purpose

Position the benchmark families as part of a broader empirical question about how to evaluate workflow quality rather than only answer correctness.

### 4. LLM-As-Judge And Reviewer-Based Evaluation

This section should cover work on:

- model-based grading
- judge bias and position bias
- calibration needs
- the distinction between model-based secondary review and human independent review

## Main purpose

Give the paper a clean way to discuss the `L2A` layer without implying that it solves evaluator independence completely.

## Recommended Contribution Positioning

The related-work section should make the paper's contribution sound like:

- an empirical software-engineering study of protocolized execution and review workflows for agentic systems

It should not sound like:

- a general theory of learning in language models
- a broad claim that prompting has been solved
- a pure multiagent architecture paper

## Immediate Drafting Guidance

When the related-work section is added, it should do three things explicitly:

1. distinguish reusable protocol artifacts from one-off prompt specialization
2. distinguish human `L2` from model-based `L2A`
3. explain why hosted results are the paper's main empirical spine and local results are bounded resilience evidence

## Next Use

This note should be used in the next substantive manuscript revision pass after hosted human `L2`, unless the team wants to draft the related-work section earlier as a non-blocking editorial improvement.
