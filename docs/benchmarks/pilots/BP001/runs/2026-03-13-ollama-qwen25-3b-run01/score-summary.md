# Ollama Qwen2.5 3B BP001 Run 01 Score Summary

## Stronger condition
- Taught-protocol condition

## Baseline total
- `1/10`

## Taught total
- `6/10`

## Main observed differences
- The baseline output was elaborate but aimed at a different class of work, inventing databases, user access, and test environments instead of planning repository-local benchmark execution.
- The taught output adopted the planning protocol structure, added a validator pass, and closed with a scorecard.
- However, the taught output still remained weakly grounded in the actual repository and did not name the expected markdown run artifacts with enough specificity.

## Confounds
- Same-operator scoring
- Protocol embedding directly favors structural compliance
- This is a single-model open-weight smoke run on storage-constrained local hardware

## Interpretation
This is mixed pilot evidence for Ollama `qwen2.5:3b`. The teaching protocol clearly improved planning structure and revision behavior, but task fidelity remained weak enough that the result should be treated as smoke evidence rather than a strong benchmark lane result.

## Follow-on action
- Keep `qwen2.5:3b` as a valid low-parameter smoke point.
- Do not generalize from this one run to the full low-parameter lane.
- If additional space remains available, the next open-weight step should be a tighter rerun or a second small model after removing the current one.
