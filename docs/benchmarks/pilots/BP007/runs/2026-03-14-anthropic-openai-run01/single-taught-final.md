# Quantyra-Teaching: BP007 Execution Plan

**Plan ID:** PLAN-QT-007  
**Planning type:** `mixed`  
**Revision level:** `L3`  
**Status:** Draft B

## Context and Grounding
This revision explicitly treats BP007 as a benchmark experiment within the Quantyra-Teaching workflow. It starts after the BP006 architecture freeze and is scoped to producing the BP007 benchmark packet and the retained outputs needed for markdown-native replication.

## Goal
Execute BP007 to produce a benchmark packet, retained artifacts, and a closeout scorecard that together allow independent replication and provide a clean signal on whether the curriculum intervention produces genuine, transferable reasoning improvement over the comparison condition.

## Constraints
- Architecture remains frozen at BP006.
- Benchmark packets follow the retention schema.
- Condition B must have a hard loop cap.
- The planning task brief must be identical across conditions.
- Evaluator artifacts must use shared criteria across both conditions.

## Experimental Conditions
### Condition A
Single-model taught baseline producing one planning artifact plus one validator revision.

### Condition B
Protocol-plus-quality-bar loop with a fixed reviewer quality bar, explicit final status, and capped review cycles.

## Required Retained Outputs
- `single-taught-draft.md`
- `single-taught-validator-feedback.md`
- `single-taught-final.md`
- loop prompt artifacts
- loop draft and review artifacts
- final-status note
- evaluator worksheet
- score summary

## Dependencies
BP006 freeze -> BP007 packet -> held-out evaluation seal -> condition run sheets -> execution -> evaluator artifacts -> score summary.

## Ordered Actions
1. Draft and review the BP007 benchmark packet.
2. Seal the held-out evaluation set and lock the conditions.
3. Produce Condition A artifacts.
4. Produce Condition B loop artifacts.
5. Score both conditions with the same worksheet.
6. Write the final score summary and closeout note.

## Fallback
If the loop cannot pass within the cap, record `fail-cap`. If honest completion is impossible due to missing inputs, record `blocked`.

This final is materially better than the initial draft because it reframes BP007 as an experiment, but it still invents a held-out evaluation-sealing workflow that is not actually required by the task packet.
