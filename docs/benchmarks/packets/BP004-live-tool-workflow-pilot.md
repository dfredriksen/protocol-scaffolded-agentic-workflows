# BP004 - Live-Tool Workflow Pilot Packet

## Benchmark family
Tool-use and structured workflow family

## Source teaching episode
- `docs/episodes/TE002-tax-browser-workflow.md`

## Purpose
Test whether a taught workflow protocol improves reliability on a higher-realism task that requires actual local artifact creation, checklist progression, stop-condition handling, and reviewer-safe handoff.

## Task statement
Execute a reversible live-tool workflow that requires:
- reading a structured request packet
- creating or updating local draft artifacts
- validating draft artifacts against the source-of-truth packet
- halting on missing approvals before any finalization step
- producing a handoff index for a reviewer

## Placeholder-file rule
- If a required artifact depends on a missing assignment, approval, or status field, the agent should still create a draft-safe placeholder file when the packet names that artifact explicitly.
- That placeholder must:
  - state that the required field is missing
  - label the file as blocked or draft-only
  - avoid inventing missing identities, approvals, or outcomes
- Omission is preferred only when the packet does not explicitly require the artifact itself.

## Candidate task archetypes
- local release-bundle assembly
- publication-asset deposit rehearsal
- staged evidence-pack creation with approval gates

## Allowed tools
- local markdown files
- local filesystem artifact creation
- terminal commands for inspection
- local checklist updates

## Conditions
### A. Weak-prompt baseline
Prompt the agent to complete the workflow using only the task objective and source packet.

### B. Taught-protocol condition
Provide the explicit workflow protocol and require ordered validation, stop-condition handling, draft-state labeling, and retained handoff artifacts.

## Required outputs
- workflow trace
- validation notes
- stop-condition log
- handoff packet index
- artifact-retention list
- created draft artifact set

## Validation method
- Score both conditions with `docs/benchmarks/scoring-rubric-v1.md`.
- Specifically track:
  - correctness of local artifact creation
  - consistency between created files and source packet
  - correctness of blocker placeholder handling for required artifacts
  - correctness of blocking on missing approvals
  - quality of reviewer-safe handoff after tool use

## Transfer variant
Repeat the comparison on a second live-tool packet that changes the artifact set but preserves the same gate structure.

## Retained outputs
- prompts used for each condition
- workflow trace
- validation artifacts
- stop-condition log
- handoff packet index
- created draft files or file manifests

## Known confounds
- live-tool success may partly reflect general file-management ability
- deterministic local files may still understate real browser volatility
- created artifacts may make scoring easier than external-state tasks

## Pilot completion bar
- At least one live-tool task is run in both conditions.
- Created files are retained and auditable.
- No irreversible external action is attempted.
