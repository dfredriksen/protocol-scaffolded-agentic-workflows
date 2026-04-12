# BP008 Run Sheet V1

## Purpose
Track the first local workflow quality-bar runs after BP007B triage.

| Pair ID | Executor | Reviewer | Core loop cap | Stretch loop cap | Status | Final status | Best score | Run folder | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| W01 | `llama3.2:3b` | `gpt-4.1` | `2` | `1` | scored | `pass-core` | `5/10` | `docs/benchmarks/pilots/BP008/runs/2026-03-14-llama32-openai-run01` | strongest current local executor clears core immediately on the workflow task, but still fails stretch on placeholder precision and handoff quality |
| W02 | `qwen2.5-coder:3b` | `gpt-4.1` | `2` | `1` | scored | `fail-cap` | `3/10` | `docs/benchmarks/pilots/BP008/runs/2026-03-14-qwen25coder-openai-run01` | coding-oriented local executor remains below the workflow core bar and does not match the stronger Llama workflow result |
| W03 | `llama3.2:3b` | `qwen2.5-coder:3b` | `2` | `1` | scored | `pass-core` | `4/10` | `docs/benchmarks/pilots/BP008/runs/2026-03-14-llama32-qwen25coder-run01` | all-local fallback preserves part of the workflow gain, but under a weaker review surface than hosted review |

## Initial execution order
1. freeze the hosted-versus-local workflow comparison
2. decide whether BP008 should expand or remain the current local resilience endpoint

## Interpretation note
- BP008 is the branch-shift follow-on from BP007B triage.
- The question is not whether local models can plan abstractly. The question is whether they improve more under review on concrete workflow artifact tasks.
- W01 already suggests the answer may be yes: the same strongest local executor that stalled below stretch on planning clears the workflow core bar immediately.
- W02 shows that this gain is not universal across local models, so the next key question is whether the all-local fallback pair preserves any of the workflow advantage.
- W03 shows that the all-local fallback pair does preserve some workflow advantage, but with a softer review standard and lower absolute quality than the hosted-review lane.
