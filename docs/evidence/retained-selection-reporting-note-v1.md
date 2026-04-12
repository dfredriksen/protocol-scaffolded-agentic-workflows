# Retained Selection Reporting Note v1

Date: 2026-03-15  
Scope: clarification of `retained` terminology for journal-facing reporting

## Purpose

The repo frequently uses terms such as `retained run`, `retained pair`, and `retained artifact`. Those terms are useful internally, but they can sound like post hoc curation if left undefined in an external manuscript. This note defines the term more precisely and explains how it should be reported.

## Working Definition

In this repo, `retained` means:

- preserved as the current evidence-bearing artifact chain for a run, pair, or branch slot
- not deleted or replaced in the audit trail without documentation
- available for synthesis, review, or manuscript reference

`Retained` does not automatically mean:

- the only run ever attempted
- the best-looking run selected after broad hidden exploration
- the complete run universe for a branch

## Why The Term Needs Clarification

External reviewers may reasonably worry that `retained` means:

- cherry-picked after seeing outcomes
- strategically selected from a larger unreported pool

That risk is especially strong in:

- BP006, where a small number of pairs do conceptual work
- rerun-heavy branches like BP004 and BP007B

So the manuscript should not rely on the word alone. It should pair `retained` with explicit replacement or branch-accounting language.

## Main Retention Cases In This Repo

### 1. First stable completed run

Some branches retain the first cleanly completed run as the evidence-bearing artifact chain.

Meaning:

- the run completed under the intended packet
- no later rerun was required to fix packet ambiguity or runtime invalidity

### 2. Clarified rerun replacing an ambiguous earlier run

Some branches required a rerun because the earlier run was not methodologically clean enough for publication use.

Examples of why this occurs:

- packet ambiguity was discovered later
- placeholder policy was clarified later
- reviewer logic was tightened later
- a runtime failure prevented a clean artifact chain

In those cases, the earlier run remains part of the audit trail, but the later rerun becomes the current retained evidence-bearing point for synthesis.

### 3. Exploratory architecture subset

Some branches, especially BP006, use a retained subset for synthesis even when the broader matrix is not complete.

In that case, the manuscript should say explicitly:

- the branch is exploratory or partially complete
- the retained subset is evidence-bearing but not exhaustive

## Required Reporting Discipline

Journal-facing reporting should do the following:

- define `retained` once in Methods or Appendix
- distinguish retained, superseded, blocked, and planned states
- say when a retained result is a rerun that replaced an ambiguous or invalid earlier attempt
- avoid letting `retained` stand in for full run accounting

## Recommended Manuscript Language

Safer external phrasing:

- `current evidence-bearing run`
- `current retained run after packet clarification`
- `retained exploratory pair subset`
- `superseded by a clarified rerun`

Less safe phrasing:

- `retained run` without explanation
- `strategic pair` without branch-accounting context

## Current Journal Implication

The manuscript should treat `retained` as an audit and reporting term, not as an implicit claim of exhaustiveness. Where branch universes are incomplete or selective, that incompleteness should be stated directly.
