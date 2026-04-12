Here's a revised plan that addresses the tightened stretch-bar requirements:

## Revised Teaching Planning Protocol for Quantyra-Teaching Repository

### Purpose
Improve planning reliability for research and implementation tasks that are novel, multi-step, or evaluation-sensitive in the Quantyra-Teaching repository, while ensuring alignment with the repository's existing workflow and architecture.

### Planning types
- `deterministic`: clear rules, known artifacts, low ambiguity
- `mixed`: known objective with partial discovery or dependencies
- `exploratory`: novel methodology, uncertain experiment design, or open research risk

### Required planning skeleton
- Goal (time-bounded, specific objective for this repo-phase)
- Constraints (matched to Markdown workflow of the repo, including file formats, naming conventions, and stepwise process)
- Required artifacts (identifying concrete in-repo dependencies, scripts or files, and pipeline steps)
- Dependencies (concrete in-repo dependencies, scripts or files, and pipeline steps)
- Validation checkpoints (tied to actual repo artifacts, including exact file formats and naming conventions)
- Rollback or fallback (specific steps and retained-output expectation consistent with repo practice, including backup system for reverting to previous versions)

### Plan-and-refine loop
### Phase A: draft
The initial draft must include:
- objective and success condition (for example, complete a new teaching module within the next two weeks)
- assumptions and constraints
- ordered actions
- outputs
- validation steps
- risks and fallback paths

### Revision policy
- `L0`: execute directly
- `L1`: one draft plus one revision
- `L2`: one draft plus up to two revisions
- `L3`: one draft plus up to three revisions

### Teaching-specific additions
- Every plan must state what would count as genuine teaching rather than prompt overfitting. (Example: "Teaching is genuine when students are actively engaged and demonstrate understanding through discussions and exercises.")
- Every experiment plan must identify at least one comparison condition. (Example: "Compare the new teaching module to the existing module using the 'teaching_module_compare.sh' script.")
- Every benchmark plan must define artifact retention so another agent can rerun the work. (Example: "Retain the 'benchmark_packets' folder and 'stories' folder for future reruns.")

### Concrete comparison condition
- For the `teaching_modules` folder, compare the new teaching module to the existing module using the `teaching_module_compare.sh` script. Run the script using the `repo_execute.sh` script, which includes the following steps:
  - Validate the new teaching module against the `validation_steps` folder.
  - Compare the new teaching module to the existing module using the `teaching_module_compare.sh` script.
- For the `benchmark_packets` folder, compare the new teaching module to the existing module using the `benchmark_packet_compare.sh` script. Run the script using the `repo_execute.sh` script, which includes the following steps:
  - Validate the new teaching module against the `validation_steps` folder.
  - Compare the new teaching module to the existing module using the `benchmark_packet_compare.sh` script.

### Retained outputs
- Retain the `benchmark_packets` folder and `stories` folder for future reruns.
- Retain the `teaching_module_compare.sh` script and `benchmark_packet_compare.sh` script for future reruns.

### Artifact examples
- `teaching_modules` folder
- `benchmark_packets` folder
- `stories` folder
- `teaching_module_compare.sh` script
- `benchmark_packet_compare.sh` script
- `repo_execute.sh` script
- `repo_backup.sh` script (for reverting to previous versions)

### Example of a revised plan

### Goal
Complete the development of a new teaching module within the next two weeks.

### Constraints
- Use existing repository architecture for pipeline steps.
- Adhere to Markdown workflow of the repo, including file formats and naming conventions.

### Required artifacts
- `teaching_modules` folder
- `benchmark_packets` folder
- `stories` folder
- `teaching_module_compare.sh` script
- `benchmark_packet_compare.sh` script
- `repo_execute.sh` script
- `repo_backup.sh` script

### Dependencies
- `teaching_modules` folder
- `benchmark_packets` folder
- `stories` folder
- `teaching_module_compare.sh` script
- `benchmark_packet_compare.sh` script
- `repo_execute.sh` script
- `repo_backup.sh` script

### Validation checkpoints
- Validate the new teaching module against the `validation_steps` folder.
- Compare the new teaching module to the existing module using the `teaching_module_compare.sh` script and `benchmark_packet_compare.sh` script.

### Rollback or fallback
- Use backup system to revert to a previous version if the new teaching module fails validation.
- Retain the `benchmark_packets` folder and `stories` folder for future reruns.
- Run the `repo_backup.sh` script to revert to a previous version if necessary.

This revised plan addresses the tightened stretch-bar requirements by providing a concrete comparison condition, specifying retained outputs, and avoiding the invention of folders, scripts, or workflow surfaces.
