# Google BP004 Run 01 Score Summary

## Stronger condition
- Weak-prompt baseline

## Baseline total
- `9/10`

## Taught total
- `8/10`

## Main observed differences
- Google BP004 was a mixed result: the taught condition improved narrative rigor, but the baseline was actually stronger on created-artifact completeness because it materialized the blocker file `reviewer-status.md` while the taught condition omitted it.
- This run shows a real benchmark-design issue: the taught protocol needs to specify whether blocker-placeholder files are mandatory.

## Confounds
- Same-operator scoring; proxy-materialized file creation rather than native tool use; the taught prompt encodes the protocol directly.

## Interpretation
This is mixed BP004 evidence for Google `gemini-2.5-flash`. The taught workflow improved reasoning hygiene, but not the final artifact set.

## Follow-on action
- Clarify BP004 placeholder-file policy before treating this provider result as stable.
