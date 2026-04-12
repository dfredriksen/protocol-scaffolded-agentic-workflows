# Ollama Llama 3.1 8B BP001 Run 01 Score Summary

## Stronger condition
- Taught-protocol condition

## Baseline total
- `3/10`

## Taught total
- `6/10`

## Main observed differences
- The baseline is more coherent than the smaller-model baselines, but it still leaks into off-repo operations such as pilot teams, shared drives, cloud storage, and remote execution.
- The taught condition is the first open-weight run that materially revises after validator feedback and converges toward repo-local artifact management.
- The remaining weakness is that the final plan is still too abstract and partially unrealistic: it describes repository-level controls more than an immediately executable BP001/BP002 markdown workflow.

## Confounds
- Same-operator scoring
- Tighter repository-anchoring guardrails changed both prompts relative to the original BP001 packet
- Protocol embedding directly favors structural compliance
- This remains a one-model-at-a-time open-weight run on local hardware, with notably slower revision latency than the 3B models

## Interpretation
This is the strongest open-weight BP001 result so far, but it only matches the current taught ceiling instead of clearly exceeding it. `llama3.1:8b` appears more capable of using validator feedback than the smaller models, yet the final plan still does not become fully repository-executable. The result is positive and more credible than the earlier lanes, but still mixed rather than promotion-grade.

## Follow-on action
- Keep this as the strongest open-weight BP001 point to date.
- Compare it directly against `qwen2.5:3b` before deciding whether a transfer experiment is justified.
- Do not assume the open-weight branch has cleared its expansion gate yet.
