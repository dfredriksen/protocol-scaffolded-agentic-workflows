# Implementation Plan for the Next Phase of This Repository

## 1. Repository-Phase Objective

Advance the Quantyra-Teaching research program from the current frozen hosted baseline and mixed open-weight BP001 evidence into the next executable benchmark-design phase, with retained markdown artifacts that can support either BP005 self-protocol learning or mixture-of-experts correction experiments.

## 2. Constraints and In-Repo Dependencies

### Constraints
- Work must remain inside this repository's markdown research workflow.
- No databases, product systems, API rollout, or external training infrastructure.
- Benchmark claims should stay aligned with existing scoring and evidence conventions.
- The machine remains constrained for open-weight execution, so planning should not assume broad local expansion.

### Dependencies
- Existing benchmark framework and prior run sheets.
- Current checkpoint and E003 epic state.
- Existing stories for BP005 and mixture-of-experts planning.
- Current open-weight comparison memo and hosted synthesis.

## 3. Markdown Artifacts to Create or Update

### Core artifacts
- A benchmark design memo for the next branch selected.
- A run sheet for the selected benchmark family.
- Any new story files needed to cover execution.
- Updates to the checkpoint and, if needed, the open-weight comparison memo.

### Candidate artifact sets
- If BP005 is selected:
  - self-protocol-learning packet
  - run sheet
  - evaluator worksheet
- If mixture-of-experts is selected:
  - pairing matrix
  - benchmark packet
  - condition definitions for correction and reviewer takeover

## 4. Execution Steps

1. Confirm the next repository-approved benchmark branch from the current checkpoint and epic.
2. Select the benchmark family to instantiate next:
   - BP005 self-protocol learning, or
   - mixture-of-experts correction/takeover
3. Draft the primary markdown packet for that branch.
4. Add or update the supporting run sheet and story coverage.
5. Ensure the packet explicitly references scoring, retained outputs, and comparison expectations.
6. Update the checkpoint to reflect the new execution-ready state.

## 5. Validation Checkpoints

- Check that the new plan stays inside the repo's markdown benchmark workflow.
- Check that required artifacts are named explicitly.
- Check that the next branch is connected to existing epic/story tracking.
- Check that the resulting benchmark can generate retained evidence rather than only design prose.

## 6. Fallback / Rollback Note

If the selected benchmark branch cannot be instantiated cleanly, fall back to the narrowest viable markdown artifact:
- a design memo plus run sheet
- or a story/epic-level planning update

This keeps the repo moving without introducing unsupported implementation claims.
