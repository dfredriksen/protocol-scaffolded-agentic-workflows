# Manuscript Supplement V1

Date: 2026-04-11  
Target venue: `Empirical Software Engineering`

## Purpose

Provide the submission-facing supplement that supports the main manuscript without forcing the main paper to carry internal run-accounting detail.

## Supplement A. Experimental Conditions

### Core condition definitions

- `baseline`: the weaker comparison condition that does not receive the reusable protocol artifact being tested
- `taught`: the comparison condition that receives the reusable protocol artifact directly
- `correction`: a two-model condition in which the reviewer critiques and the original executor remains final author
- `takeover`: a two-model condition in which the reviewer or second model becomes the final author
- `quality-bar loop`: a bounded revise-and-check loop with explicit pass and stop conditions

### Status labels used in workflow branches

- `pass-core`: the minimum success bar for a workflow artifact chain
- `pass-stretch`: a stronger-than-required success outcome
- `fail-cap`: the loop cap was reached without clearing the required bar
- `blocked`: the run could not proceed cleanly because of a method, runtime, or account-side blocker

### Construct note

In this manuscript, `teaching` does not mean durable internal learning. It means that a lesson has been externalized into a reusable protocol artifact and then injected into the taught condition as a structured intervention.

## Supplement B. Branch-Level Run Accounting

### Hosted manuscript spine

The hosted manuscript spine is built from OpenAI `gpt-4.1`, Google `gemini-2.5-flash`, and Anthropic `claude-sonnet-4-6` across:

- `BP001` planning
- `BP002` structured workflow
- `BP003` harder workflow and transfer
- `BP004` higher-realism proxy-materialized workflow

The main hosted synthesis uses the current retained comparison sets recorded in:

- `docs/benchmarks/cross-provider-synthesis-2026-03-13.md`

### Open-weight `BP001`

Current branch-level universe:

- five local models
- one baseline and one taught condition per model
- ten scored condition outputs total

Models in the frozen comparison surface:

- `qwen2.5:3b`
- `qwen2.5-coder:3b`
- `llama3.1:8b`
- `llama3.2:3b`
- `deepseek-coder-v2:16b-lite-instruct-q3_K_S`

Primary ledger:

- `docs/benchmarks/open-weight-run-sheet-v1.md`

### `BP006` mixture-of-experts branch

Current branch-level universe:

- five eligible models
- twenty ordered executor-reviewer pairs excluding self-review
- six retained and scored pairs
- fourteen planned pairs at the current snapshot

Primary ledger:

- `docs/benchmarks/bp006-exhaustive-run-sheet-v1.md`

Interpretation rule:

- report `BP006` as structured exploratory architecture evidence, not as an exhaustive completed matrix

### `BP007B` verifier-backed local planning branch

Current branch-level universe:

- indexed slots `T01` through `T09`
- nine total branch slots

Primary ledger:

- `docs/benchmarks/bp007b-run-sheet-v1.md`

Interpretation rule:

- methodologically useful diagnostic branch, but not the main local publication surface

### `BP008` local workflow branch

Current branch-level universe:

- `W01`
- `W02`
- `W03`

Primary ledger:

- `docs/benchmarks/bp008-run-sheet-v1.md`

Interpretation rule:

- strongest current local resilience surface

## Supplement C. Retained And Superseded Logic

### Working definition

`Retained` means:

- preserved as the current evidence-bearing artifact chain for a run, pair, or branch slot
- not deleted or replaced in the audit trail without documentation
- available for synthesis, review, or manuscript reference

`Retained` does not mean:

- the only run ever attempted
- the visually strongest result chosen after broad hidden exploration
- the full run universe for a branch

### Main retention cases

#### First stable completed run

Some branches retain the first cleanly completed run as the current evidence-bearing artifact chain.

#### Clarified rerun replacing an ambiguous earlier run

Some branches required a rerun because an earlier run was not methodologically clean enough for publication use, for example due to:

- packet ambiguity
- clarified placeholder policy
- tightened reviewer logic
- runtime invalidity

In those cases, the earlier run remains in the audit trail and the clarified rerun becomes the current evidence-bearing point.

#### Exploratory subset

Some branches, especially `BP006`, use a retained subset for synthesis even though the broader branch is incomplete.

Reporting rule:

- say explicitly that the branch is exploratory or partially complete
- do not let `retained` stand in for exhaustive accounting

## Supplement D. Scoring And Review Procedures

### Review layers

- `L0`: initial operator scoring against the benchmark rubric
- `L1`: operator-side second-pass review or adjudication where applicable
- `L2A`: model-based secondary review, currently Anthropic on the hosted `BP001` and `BP002` slice
- `L2`: distinct human evaluator review, currently completed for the hosted `BP001` and `BP002` six-run slice

### Current review posture

- most of the full portfolio still relies on `L0/L1`
- `L2A` is used as a secondary consistency check, not as independence proof
- distinct human `L2` now exists for the hosted `BP001/BP002` slice and agrees directionally with the stronger taught condition in all six reviewed runs

### Human `L2` handling rule

The Fernanda De La O memo is the controlling human-review artifact. The manuscript uses the memo for directional support and uses the repository-local score-table transcription only for column totals. The paper does not rely on unlabeled rubric rows for finer-grained numerical interpretation.

## Supplement E. Results Tables

### Hosted cross-provider within-model uplift

| Provider | Model | BP001 baseline | BP001 taught | BP002 baseline | BP002 taught | BP003 baseline | BP003 taught |
| --- | --- | --- | --- | --- | --- | --- | --- |
| OpenAI | `gpt-4.1` | `3/10` | `9/10` | `5/10` | `9/10` | `8/10` | `10/10` |
| Google | `gemini-2.5-flash` | `3/10` | `7/10` | `8/10` | `9/10` | `8/10` | `10/10` |
| Anthropic | `claude-sonnet-4-6` | `1/10` | `8/10` | `8/10` | `9/10` | `8/10` | `10/10` |

### Local evidence ladder

| Surface | Strongest retained result | Interpretation |
| --- | --- | --- |
| Open-weight `BP001` | taught ceiling `6/10` | structural planning uplift exists, but absolute planning fidelity remains limited |
| `BP007B` verifier-backed planning | `T07` reaches `pass-core` without score uplift | stronger verification removes false positives but does not rescue weak local planning |
| `BP008` workflow branch | `W01` and `W03` reach `pass-core` | concrete workflow tasks preserve the clearest local resilience effect |

### `BP006` architecture summary

| Pair | Executor | Reviewer | Best condition |
| --- | --- | --- | --- |
| `P1` | `gpt-4.1` | `claude-sonnet-4-6` | correction |
| `P2` | `gemini-2.5-flash` | `gpt-4.1` | takeover |
| `P3` | `gpt-4.1` | `gemini-2.5-flash` | no material MoE gain |
| `P4` | `claude-sonnet-4-6` | `gpt-4.1` | correction |
| `P5` | `deepseek-coder-v2:16b-lite-instruct-q3_K_S` | `gpt-4.1` | takeover |
| `P6` | `deepseek-coder-v2:16b-lite-instruct-q3_K_S` | `llama3.2:3b` | modest local-local gain |

## Supplement F. Local Runtime And Environment Constraints

The local branch should be interpreted with the following environmental constraints in mind:

- one-model-at-a-time storage discipline on the current machine
- slower local inference than hosted runs
- lower-quality all-local review loops than hosted-review loops
- stronger sensitivity to runtime instability during revise-and-check cycles

These constraints matter because local ceilings reflect both model capability and operating environment. The local branch therefore supports resilience claims, not hosted-quality parity claims.

## Supplement G. Data, Materials, And Audit Trail Availability

The following materials are archived in the project repository and available as part of the manuscript evidence chain:

- benchmark packets
- run sheets
- retained artifact chains
- synthesis memos
- scoring rubrics
- human and model-based hosted review materials

The separate EMSE title-page declarations currently state that the archived materials are maintained in a project repository that is not presently released as a public dataset because it includes operational materials and review artifacts, but editor and reviewer access can be provided on reasonable request.
