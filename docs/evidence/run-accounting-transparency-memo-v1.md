# Run Accounting Transparency Memo v1

Date: 2026-03-15  
Scope: journal-first reporting transparency for the current retained evidence package

## Purpose

This memo makes the current run universe more explicit so the manuscript does not rely only on narrative summaries of `retained` evidence-bearing runs. The goal is not to re-score every branch here. The goal is to reduce selective-reporting risk by stating what was run, what is currently used in the manuscript spine, and where branch-level incompleteness still exists.

## Reporting Principle

The manuscript should distinguish between:

- the full run universe known to the repo for a branch
- the current retained evidence-bearing subset used in synthesis
- superseded or replaced runs that remain part of the audit trail

## Hosted Manuscript Spine

### Hosted cross-provider benchmark family

The main hosted publication surface is built from the cross-provider benchmark program covering:

- BP001 planning loop
- BP002 workflow/planning follow-on
- BP003 tool-mediated workflow and transfer
- BP004 live-tool workflow follow-on

The current main hosted synthesis memo is:
- [cross-provider-synthesis-2026-03-13.md](C:\Users\Dan\Desktop\Projects\Quantyra-Teaching\docs\benchmarks\cross-provider-synthesis-2026-03-13.md)

The hosted provider set is:
- OpenAI
- Google
- Anthropic

The hosted evidence spine is manuscript-primary because it is the cleanest repeated within-model uplift surface across distinct providers.

## Open-Weight BP001 Coverage

The current open-weight BP001 comparison surface includes five local models:

- `qwen2.5:3b`
- `qwen2.5-coder:3b`
- `llama3.1:8b`
- `llama3.2:3b`
- `deepseek-coder-v2:16b-lite-instruct-q3_K_S`

Each model has:

- one baseline condition
- one taught condition

So the current frozen open-weight BP001 surface consists of:

- 5 retained run folders
- 10 scored condition outputs

Primary ledger:
- [open-weight-run-sheet-v1.md](C:\Users\Dan\Desktop\Projects\Quantyra-Teaching\docs\benchmarks\open-weight-run-sheet-v1.md)

## BP006 Mixture-of-Experts Branch

The current exhaustive BP006 matrix is defined over five eligible models:

- `gpt-4.1`
- `claude-sonnet-4-6`
- `gemini-2.5-flash`
- `deepseek-coder-v2:16b-lite-instruct-q3_K_S`
- `llama3.2:3b`

The matrix is ordered and excludes self-review pairs, yielding:

- 20 ordered executor-reviewer pairs total

Current retained/scored coverage in the exhaustive sheet:

- 6 retained/scored pairs
- 14 still planned at the time of the current sheet snapshot

Primary ledger:
- [bp006-exhaustive-run-sheet-v1.md](C:\Users\Dan\Desktop\Projects\Quantyra-Teaching\docs\benchmarks\bp006-exhaustive-run-sheet-v1.md)

Implication:

- BP006 should be reported as a structured exploratory architecture branch, not as a closed exhaustive result surface
- the six retained pairs are evidence-bearing, but they do not support a fully general architecture law

## BP007B Local Planning Quality-Bar Branch

The verifier-backed local planning follow-on is currently represented by:

- T01 through T09 in the run sheet

That gives a branch-level universe of:

- 9 indexed BP007B run slots

Primary ledger:
- [bp007b-run-sheet-v1.md](C:\Users\Dan\Desktop\Projects\Quantyra-Teaching\docs\benchmarks\bp007b-run-sheet-v1.md)

Current branch interpretation:

- useful diagnostic branch
- not the primary local publication surface

## BP008 Local Workflow Quality-Bar Branch

The currently retained BP008 branch includes:

- W01
- W02
- W03

So the current branch-level surface is:

- 3 indexed BP008 runs

Primary ledger:
- [bp008-run-sheet-v1.md](C:\Users\Dan\Desktop\Projects\Quantyra-Teaching\docs\benchmarks\bp008-run-sheet-v1.md)

Current branch interpretation:

- strongest current local branch
- main local workflow evidence surface

## Current Transparency Risk

The current manuscript package is stronger than many internal research packets, but the reporting still leaves room for an external reviewer to ask:

- how many total runs exist for each branch
- which runs are merely superseded versus excluded
- why some pairings are synthesized and others are still only planned
- whether `retained` means selected after inspection rather than governed replacement or stabilization

## Required Follow-On

The manuscript should eventually expose, at minimum:

- branch-level run counts
- retained versus superseded run logic
- incomplete versus complete branch status
- where the manuscript uses only a strategically chosen subset

## Current Safe Journal Claim

The current evidence package can safely say:

- hosted cross-provider uplift is the primary repeated evidence surface
- open-weight and local branches provide bounded resilience and exploratory architecture evidence
- some branch families are complete enough for synthesis, while others remain intentionally partial or exploratory

It should not yet imply:

- that every branch is exhaustively complete
- that retained subsets are equivalent to full branch accounting

