# Anthropic BP003 Run 01 Artifact Retention List

## Baseline

Retained from the baseline run:
- raw workflow trace with component inventory and approval-gate checks
- validation notes labeling missing reviewer assignment, missing IP review, and missing publication approval as blockers
- stop-condition log showing the workflow halted before any submission-ready action
- derived handoff summary created from the retained baseline artifacts because the model did not emit a full handoff section before completion


## Taught

Retained from the taught run:
- raw workflow trace with explicit present, partial, and missing state separation
- validation notes distinguishing content deficiencies from approval-gate failures
- stop-condition log showing all four active blockers and explicit halt behavior
- handoff packet index with reviewer-oriented bundle state and next actions
- derived artifact-retention summary created from the taught retained artifacts because the model referenced, but did not emit, a separate artifact-retention heading
