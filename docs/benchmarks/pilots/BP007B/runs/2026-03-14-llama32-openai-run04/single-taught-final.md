## Revised Teaching Planning Protocol

### Purpose
Improve planning reliability for research and implementation tasks that are novel, multi-step, or evaluation-sensitive in the Quantyra-Teaching repository.

### Planning Types
- `deterministic`: clear rules, known artifacts, low ambiguity
- `mixed`: known objective with partial discovery or dependencies
- `exploratory`: novel methodology, uncertain experiment design, or open research risk

### Required Planning Skeleton
- Goal
- Constraints
- Required Artifacts
  - **Artifact Locations**: Specify the exact repository locations for all artifacts, including benchmark packets, stories, run sheets, and scripts.
  - **Artifact Versions**: Ensure all artifacts are version-controlled and require explicit validation that all dependencies are current and accessible.
- Dependencies
  - **Versioned Files**: Enumerate specific, versioned files or objects required for the plan and require explicit validation that all dependencies are current and accessible.
  - **Repo Catalog**: Define a repository catalog to track and manage artifact dependencies and validation.
- Validation Checkpoints
  - **Output Traceability**: Confirm all outputs match their required locations in the repo.
  - **Reproducibility Checks**: Verify each run sheet produces deterministic, rerunnable results, with file hashes or logs retained.
  - **Decision Note Linkage**: Ensure decision notes directly reference all preceding artifacts and logic, with links or checksums.
  - **Artifact Reproducibility**: Confirm all artifacts are reproducible and under version control.
- Rollback/Fallback
  - **Versioning Mechanisms**: Detail the fallback or rollback process including versioning mechanisms, trigger conditions, and required documentation.
  - **Backup/Restore**: Specify backup or restore mechanisms and under what conditions a rollback or fallback is triggered.

### Plan-and-Refine Loop
#### Phase A: Draft
The initial draft must include:
- Objective and Success Condition
- Assumptions and Constraints
- Ordered Actions
- Outputs
- Validation Steps
- Risks and Fallback Paths
- **Genuine Teaching Criteria**: Explicitly state how the teaching approach avoids prompt overfitting.
- **Comparison Conditions**: Specify at least one negative or control condition, describe the decision logic for the comparison, and detail how the comparison outputs are retained.

#### Phase B: Validator Review
Validator feedback must identify:
- Correctness issues
- Missing dependencies
- Evaluation gaps
- Confounds or bias risks
- Concrete revisions required
- **Validation Checklist**: Follow a detailed review checklist mapped to the revised planning protocol.

### Revision Policy
- `L0`: Execute directly
- `L1`: One draft plus one revision
- `L2`: One draft plus up to two revisions
- `L3`: One draft plus up to three revisions

### Closeout Scorecard
- Constraint Adherence
- Completion Rate
- Validation Pass or Fail
- Rework Count
- Open Follow-ups

This revision improves the structure, but it still remains generic and does not map cleanly to the repo's actual benchmark files or current post-BP006 phase.
