# Revised Teaching Planning Protocol for Quantyra-Teaching Repository

## Purpose
Improve planning reliability for research and implementation tasks that are novel, multi-step, or evaluation-sensitive in the Quantyra-Teaching repository, while ensuring alignment with the repository's existing workflow and architecture.

## Planning types
- `deterministic`: clear rules, known artifacts, low ambiguity
- `mixed`: known objective with partial discovery or dependencies
- `exploratory`: novel methodology, uncertain experiment design, or open research risk

## Required planning skeleton
- Goal (time-bounded, specific objective for this repo-phase)
- Constraints (matched to Markdown workflow of the repo, including file formats, naming conventions, and stepwise process)
- Required artifacts (identifying concrete in-repo dependencies, scripts or files, and pipeline steps)
- Dependencies (concrete in-repo dependencies, scripts or files, and pipeline steps)
- Validation checkpoints (tied to actual repo artifacts, including exact file formats and naming conventions)
- Rollback or fallback (specific steps and retained-output expectation consistent with repo practice, including backup system for reverting to previous versions)

## Plan-and-refine loop
### Phase A: draft
The initial draft must include:
- objective and success condition (for example, complete a new teaching module within the next two weeks)
- assumptions and constraints
- ordered actions
- outputs
- validation steps
- risks and fallback paths

## Revision policy
- `L0`: execute directly
- `L1`: one draft plus one revision
- `L2`: one draft plus up to two revisions
- `L3`: one draft plus up to three revisions

## Teaching-specific additions
- Every plan must state what would count as genuine teaching rather than prompt overfitting.
- Every experiment plan must identify at least one comparison condition.
- Every benchmark plan must define artifact retention so another agent can rerun the work.

## Example of a revised plan

### Goal
Complete the development of a new teaching module within the next two weeks.

### Constraints
- Use existing repository architecture for pipeline steps.
- Adhere to Markdown workflow of the repo, including file formats and naming conventions.

### Required artifacts
- `teaching_modules` folder
- `benchmark_packets` folder
- `stories` folder
- Existing repository architecture for pipeline steps

### Dependencies
- `teaching_modules` folder
- `benchmark_packets` folder
- `stories` folder
- Existing repository architecture for pipeline steps

### Validation checkpoints
- Validate the new teaching module against at least two comparison conditions.
- Run the new teaching module against existing benchmark packets and stories.

### Rollback or fallback
- Use backup system to revert to a previous version if the new teaching module fails validation.
- Retain the benchmark packets and stories used to validate the new teaching module for future reruns.
