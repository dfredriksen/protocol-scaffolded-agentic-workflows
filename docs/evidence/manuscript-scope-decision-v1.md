# Manuscript Scope Decision v1

Date: 2026-03-15  
Scope: journal-first narrowing decision for the current manuscript

## Decision

The journal manuscript should be narrowed around a single primary thesis:

- reusable protocol artifacts produce repeated within-model performance uplift across hosted providers on planning and workflow benchmark families

Everything else should be subordinated to that thesis.

## Primary Manuscript Spine

The main empirical spine should be:

- hosted cross-provider results
- within-model baseline versus taught comparisons
- repeated effects across BP001 through BP004

Primary synthesis anchor:
- [cross-provider-synthesis-2026-03-13.md](C:\Users\Dan\Desktop\Projects\Quantyra-Teaching\docs\benchmarks\cross-provider-synthesis-2026-03-13.md)

## Secondary Material

### Local evidence

Local/open-weight evidence should remain in the paper, but as a bounded resilience section.

Allowed role:

- supports fallback and resilience claims
- shows that some protocol-plus-review effects survive outside hosted systems

Disallowed role:

- replacing the hosted spine
- implying local parity with hosted systems

### BP006 mixture-of-experts

BP006 should remain in the manuscript only as a secondary architecture analysis.

Allowed role:

- shows that reviewer quality and executor strength affect whether correction or takeover is better

Disallowed role:

- competing with the main manuscript thesis
- appearing as a second co-equal paper inside the same draft

If space pressure becomes real, BP006 should be demoted before the hosted spine or local resilience section.

## Excluded Or Deferred From Main Claim

The following should not be treated as central claims in the journal draft:

- exhaustive architecture laws from BP006
- strong self-generated learning claims
- local replacement-quality claims
- conference-style novelty framing around multiple parallel contributions

## Why This Narrowing Is Necessary

Without narrowing, the manuscript tries to be all of the following at once:

- a paper about protocol externalization
- a hosted cross-provider uplift paper
- a local resilience paper
- a multi-model reviewer-architecture paper

That is too much conceptual load for one journal submission and invites reviewer skepticism about focus and completeness.

## Resulting Paper Shape

### Core

- hosted protocol-mediated uplift across providers and benchmark families

### Secondary

- local bounded resilience
- exploratory reviewer-architecture findings

### Future Work

- self-generated protocol learning
- deeper local architecture search
- broader reviewer-loop variants

## Submission Implication

This paper should read as one primary software-engineering study with supporting secondary analyses, not as a bundle of loosely related internal research threads.
