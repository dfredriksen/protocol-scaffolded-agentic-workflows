# OpenAI BP001 Run 01 Score Summary

## Stronger condition
- Taught-protocol condition

## Baseline total
- `3/10`

## Taught total
- `9/10`

## Main observed differences
- The baseline output was generic and weakly grounded in the actual repository.
- The taught output supplied a clear planning skeleton, validation checkpoints, risks, fallback, and explicit comparison logic.

## Confounds
- Same-operator scoring
- The taught prompt embeds the planning protocol directly, so the result is partly a protocol-following test by design

## Interpretation
This is strong pilot evidence that OpenAI `gpt-4.1` benefits materially from the taught planning protocol on BP001.

## Follow-on action
- Execute BP002 baseline and taught conditions for OpenAI.
