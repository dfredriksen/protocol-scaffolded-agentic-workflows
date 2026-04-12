Repository-phase objective:
Implement and document the BP001 post-freeze evaluation and refinement cycle, focusing on systematic benchmarking, error analysis, and targeted story updates within the markdown-based workflow.

Constraints and dependencies:
- Must use only markdown artifacts and workflows already established in Quantyra-Teaching.
- No new infrastructure, databases, or external services.
- All work must reference or build upon existing benchmark packets, stories, run sheets, and decision logs.
- BP001 open-weight is frozen; no further model training or weight changes in this phase.

Markdown artifacts to create or update:
- `/benchmarks/BP001-eval-packet.md`
- `/stories/BP001-refinement-stories.md`
- `/runsheets/BP001-postfreeze-runsheet.md`
- `/decisions/BP001-eval-decisions.md`
- `/checkpoints/BP001-postfreeze-checkpoint.md`

Ordered execution steps:
1. Draft BP001 evaluation packet.
2. Create the postfreeze run sheet.
3. Run evaluations and log results.
4. Draft BP001 refinement stories.
5. Update the BP001 evaluation decisions.
6. Write the checkpoint.
7. Review and iterate as needed.

Validation checkpoints:
- All new or updated markdown artifacts are present, linked, and internally consistent.
- Each error or gap is traceable to a story and a decision entry.
- Checkpoint file accurately summarizes phase status and next steps.

Fallback or rollback:
- If evaluation artifacts are incomplete or inconsistent, revert to the last stable checkpoint and re-execute from step 1 with corrections.
