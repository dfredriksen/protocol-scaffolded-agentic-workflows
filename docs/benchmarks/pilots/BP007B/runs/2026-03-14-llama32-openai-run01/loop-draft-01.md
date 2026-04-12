# Implementation Phase Draft: Post-BP006 Architecture Freeze

## Purpose
Improve planning reliability for research and implementation tasks that are novel, multi-step, or evaluation-sensitive, leveraging the existing benchmark packets, stories, run sheets, decision notes, and checkpoint updates in the Quantyra-Teaching repository.

## Planning Types
Based on the planning protocol, we categorize this implementation phase as `mixed`, given the novel methodology, uncertain experiment design, and open research risk involved.

## Required Planning Skeleton
### Goal
Implement a novel teaching framework that integrates Quantyra's decision-making capabilities with human-in-the-loop evaluation.

### Constraints
- Adhere to DAPO-inspired plan-and-refine model.
- Leverage existing benchmark packets, stories, run sheets, decision notes, and checkpoint updates.
- Ensure genuine teaching and prompt overfitting avoidance.

### Required Artifacts
- Benchmark packets for quantifying teaching effectiveness.
- Stories and run sheets for understanding teaching experiences.
- Decision notes for documenting evaluation and research decisions.

### Dependencies
- Existing Quantyra repository architecture.
- Research design and methodology.
- Evaluation framework and metrics.

### Validation Checkpoints
- Regular evaluation of teaching effectiveness.
- Iterative refinement of the teaching framework.
- Continuous monitoring of prompt overfitting and bias risks.

### Rollback or Fallback
- Establish a backup system for reverting to previous versions of the teaching framework.
- Define procedures for handling unexpected setbacks or failures.

## Plan-and-Refine Loop

### Phase A: Draft
1. **Objective and Success Condition**: Define what constitutes effective teaching in the context of Quantyra.
2. **Assumptions and Constraints**: Identify the assumptions made about teaching effectiveness and the constraints on the teaching framework.
3. **Ordered Actions**: Outline the steps involved in implementing the teaching framework.
4. **Outputs**: Specify the outputs expected from the teaching framework.
5. **Validation Steps**: Describe the processes for validating the teaching framework's effectiveness.
6. **Risks and Fallback Paths**: Identify potential risks and define fallback strategies.

### Phase B: Validator Review
- Correctness issues: Validator feedback will focus on ensuring the teaching framework adheres to the DAPO-inspired plan-and-refine model and leverages existing resources effectively.
- Missing dependencies: Validator will verify that all necessary dependencies are accounted for and that the teaching framework is comprehensive.
- Evaluation gaps: Validator will identify potential gaps in evaluation and suggest improvements.
- Confounds or bias risks: Validator will assess the potential for confounds or bias in the teaching framework and provide recommendations for mitigation.
- Concrete revisions required: Based on the validator's feedback, concrete revisions to the teaching framework will be made.

## Revision Policy
- `L0`: Execute directly.
- `L1`: One draft plus one revision.
- `L2`: One draft plus up to two revisions.
- `L3`: One draft plus up to three revisions.

## Teaching-Specific Additions
- Every plan must state what would count as genuine teaching rather than prompt overfitting.
- Every experiment plan must identify at least one comparison condition.
- Every benchmark plan must define artifact retention so another agent can rerun the work.

## Closeout Scorecard
- Constraint adherence
- Completion rate
- Validation pass or fail
- Rework count
- Open follow-ups
