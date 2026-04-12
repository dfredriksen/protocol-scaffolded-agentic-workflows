# Local Branch Comparison 2026-03-14

## Purpose
Compare the two local quality-bar branches and record which one currently provides the stronger evidence surface for local and fallback execution.

## Branches compared
- `BP007B`: verifier-backed local planning branch
- `BP008`: local workflow quality-bar branch

## Best retained points
| Branch | Best local hosted-review point | Result | Best all-local point | Result |
| --- | --- | --- | --- | --- |
| `BP007B` | `T07` `llama3.2:3b` + `gpt-4.1` | `4/10` to `4/10`, `pass-core` | none stronger than hosted point | no clear local-local advantage retained |
| `BP008` | `W01` `llama3.2:3b` + `gpt-4.1` | `4/10` to `5/10`, `pass-core` | `W03` `llama3.2:3b` + `qwen2.5-coder:3b` | `2/10` to `4/10`, `pass-core` |

## Main findings
- `BP007B` solved the review-bar problem for planning, but it did not produce a strong local outcome. The verifier-backed reviewer prevented false positives, yet the local executors still struggled to produce sufficiently repo-grounded planning artifacts.
- `BP008` performed better because the task family was more concrete. Local executors could work against artifact presence, blocker placeholders, stop-condition logs, and handoff structure rather than abstract planning quality.
- The strongest local executor, `llama3.2:3b`, benefits materially more from the workflow branch than from the planning branch.
- The all-local fallback path is only clearly supported on `BP008`, and even there the result is weaker than the hosted-review path.

## Program-level interpretation
- The current evidence supports a sharper methodological claim:
  - local models benefit more from protocol-plus-review loops on concrete workflow artifact tasks than on abstract repo-grounded planning tasks
- Reviewer quality still matters, but task selection matters first. A better review bar did not rescue planning; a better task family did.

## Decision
- Freeze `BP007B` as a diagnostic branch that established the need for verifier-backed review and exposed the planning-task limit.
- Freeze `BP008` as the current strongest local branch and the first successful local fallback branch.
- Prefer workflow-style local experiments over planning-style local experiments until a stronger local planning model family is available.

## Recommendation
- If local execution continues, use `BP008`-style workflow tasks as the default local evaluation surface.
- If planning remains important, treat it as a hosted-review or hosted-model surface rather than the primary local branch.
