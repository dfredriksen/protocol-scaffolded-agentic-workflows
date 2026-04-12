# Anthropic BP003 Run 01 Score Summary

## Stronger condition
- Taught-protocol condition

## Baseline total
- `8/10`

## Taught total
- `10/10`

## Main observed differences
- Anthropic baseline was already strong, but the taught protocol completed the packet more cleanly and improved package-state labeling, approval-gate accounting, and reviewer handoff clarity.
- The taught condition produced cleaner separation between draft state, blockers, and downstream reviewer actions.

## Confounds
- Same-operator scoring; the taught prompt encodes the workflow protocol directly; baseline was already strong.
- The baseline raw output stopped before fully emitting the final handoff and artifact-retention sections, and the taught run referenced but did not emit a separate artifact-retention heading.

## Interpretation
This is strong pilot evidence that Anthropic `claude-sonnet-4-6` benefits from the taught BP003 workflow protocol, even though the baseline was already fairly competent.

## Follow-on action
- Update the BP002-vs-BP003 hosted comparison and hosted synthesis with the completed Anthropic BP003 lane.
