# BP007B - Tiered Quality-Bar Loop Pilot

## Benchmark family
Planning-quality family with governed review loops and a tiered reviewer bar

## Parent branch
- `docs/benchmarks/packets/BP007-protocol-quality-bar-loop-pilot.md`

## Purpose
Test whether a tiered reviewer bar improves convergence for local or weaker models by separating:
- minimum repo-grounded acceptability
- stretch quality needed to approach a `10/10` result

## Task statement
Use the same planning task family as BP007, but evaluate the executor first against a fixed core bar and then against a fixed stretch bar.

## Tightened stretch-bar note
- For all runs after `2026-03-14-llama32-openai-run01`, the stretch bar includes a hard grounding requirement:
  - no invented repo structure
  - explicit naming of real repo paths or retained artifacts
  - rerunnable next-phase logic that a second operator could execute from the retained markdown outputs

## Allowed tools
- repo file inspection
- shell commands
- markdown document editing
- planning and review artifacts

## Core question
Can weaker executors reliably converge to a core pass state, and can any architecture push them from core pass to stretch pass?

## Conditions
### A. Single-model taught baseline
- same as BP007

### B. Tiered quality-bar loop
1. Executor drafts using `docs/process/planning-protocol.md`
2. Reviewer evaluates core bar
3. Executor revises until:
   - `pass-core`
   - `fail-cap`
   - `blocked`
4. If `pass-core`, reviewer evaluates stretch bar
5. Executor revises once more if needed
6. Record final status as:
   - `pass-core`
   - `pass-stretch`
   - `fail-cap`
   - `blocked`

## Validation method
- Score final artifacts with `docs/benchmarks/scoring-rubric-v1.md`
- Also record:
  - whether core pass was reached
  - whether stretch pass was reached
  - loops to core pass
  - loops to stretch pass
  - whether the stretch bar is the real limiting factor

## Pilot completion bar
- At least one weak local or hybrid pair is run.
- Core and stretch bars are both retained verbatim.
- Final status distinguishes `pass-core` from `pass-stretch`.
