# OpenAI BP002 Run 01 Score Summary

## Stronger condition
- Taught-protocol condition

## Baseline total
- `5/10`

## Taught total
- `9/10`

## Main observed differences
- The baseline recognized missing fields but handled them loosely and did not enforce stop-condition discipline.
- The taught condition followed the workflow order, documented validation, and halted explicitly on missing transfer-task support.

## Confounds
- Same-operator scoring
- The taught prompt encodes the protocol directly

## Interpretation
This is strong pilot evidence that OpenAI `gpt-4.1` benefits from the taught workflow protocol on BP002.

## Follow-on action
- Run second-pass review on hosted BP002 results once the slice is complete.
