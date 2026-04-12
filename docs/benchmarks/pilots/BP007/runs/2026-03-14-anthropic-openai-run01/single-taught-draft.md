# Quantyra-Teaching: Post-BP006 Implementation Phase Plan

**Plan ID:** PLAN-QT-007  
**Planning type:** `mixed`  
**Revision level:** `L2`  
**Status:** Draft A

## Context and Grounding
This draft picks up immediately after the BP006 architecture freeze and treats the next phase as a teaching-quality and measurement-integrity phase rather than an architecture-change phase.

## Goal
Deliver a validated teaching curriculum that produces genuine, transferable reasoning improvement across the Quantyra-Teaching benchmark suite, with artifact retention sufficient for independent replication and with separation between genuine learning signal and prompt-level overfitting.

## Constraints
- Architecture is frozen at BP006 spec.
- Benchmark packets must follow the retention schema.
- Every curriculum unit must include a comparison condition.
- Run sheets must be usable by a fresh agent.

## Required Artifacts
- BP007 benchmark packet
- run sheet
- decision notes
- checkpoint update logs
- curriculum unit specifications
- held-out evaluation set
- overfitting diagnostic report
- teaching signal analysis
- closeout scorecard

## Dependencies
BP006 freeze confirmed -> BP007 packet drafted and reviewed -> held-out evaluation sealed -> curriculum specifications drafted -> comparison conditions specified -> scope checkpoint -> curriculum delivery -> teaching signal checkpoint -> held-out evaluation -> evaluation integrity checkpoint -> diagnostics -> scorecard.

## Ordered Actions
Draft the BP007 benchmark packet, review it, seal held-out evaluation, draft curriculum units, specify comparison conditions, run the units, review teaching signal, run held-out evaluation, write diagnostics, and complete the scorecard.

This draft is structurally strong, but it still treats BP007 as a curriculum-phase plan more than a direct benchmark-execution plan.
