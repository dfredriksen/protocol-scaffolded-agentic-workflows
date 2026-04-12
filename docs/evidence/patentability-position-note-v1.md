# Patentability Position Note V1

Date: 2026-03-28
Status: initial internal position note, not legal opinion

## Purpose

Record the current internal patentability position for the Quantyra Teaching methodology before additional external disclosure or journal submission.

## Bottom line

The current Teaching research likely supports a plausible patent-review path, but it does not yet justify a strong claim that the overall concept is patentable.

The strongest current candidate is not the broad idea of "teaching agents with protocols." That framing is likely too broad and too exposed to prior-art and obviousness attacks.

The stronger patent position is a narrower system-and-method claim around:

- converting human-discovered task knowledge into reusable protocol artifacts
- applying those artifacts to an agentic execution system rather than to model weights
- enforcing execution through explicit control structure such as validation gates, stop conditions, review layers, handoff rules, and retained evidence requirements
- producing measurable agent-level improvement under benchmarked baseline-versus-taught conditions

## Why this is only a plausible patent-review path

For a U.S. utility patent, the work must still satisfy at least:

- patent-eligible subject matter under `35 U.S.C. 101`
- novelty under `35 U.S.C. 102`
- nonobviousness under `35 U.S.C. 103`
- written description and enablement under `35 U.S.C. 112`

Official USPTO references:

- Subject matter eligibility: https://www.uspto.gov/patents/laws/examination-policy/subject-matter-eligibility
- MPEP `2106` and related guidance: https://www.uspto.gov/web/offices/pac/mpep/s2106.html
- MPEP `2103` overview of conditions for patentability: https://www.uspto.gov/web/offices/pac/mpep/s2103.html

The current repo improves the disclosure position, but it does not yet prove novelty or nonobviousness against prior art.

## Current claim framing that appears strongest

### Likely too broad

- teaching agents through protocols
- reusable protocol systems for agents
- teaching an agent without changing model weights
- using explicit procedures to improve agent performance

These formulations are too close to general prompting, agent skills, workflow runbooks, checklist systems, and ordinary instruction engineering.

### More defensible candidate core

- a formal teaching pipeline that transforms a human lesson into a reusable protocol artifact
- a defined agent-system target where the taught object is the operational agent, not the underlying model alone
- execution controls that include more than ordered steps:
  - validation gates
  - stop conditions
  - artifact-retention requirements
  - reviewer or verifier layers
  - handoff and uncertainty rules
- benchmark architecture that measures protocol-mediated uplift and transfer using retained evidence

## Relationship to "skills"

The nearest obvious comparison class is agent skills.

Current internal distinction:

- a `skill` is a reusable execution asset
- a `procedure` is an ordered step list
- a `protocol` is the broader control structure that governs how a task is executed, validated, halted, handed off, and evidenced

The likely novelty candidate is therefore not the existence of reusable skills by itself. The more plausible novelty candidate is the integrated methodology that:

- extracts a lesson from human task performance
- externalizes that lesson into a protocol artifact
- teaches the agentic system by supplying that artifact in later execution
- evaluates the resulting uplift and transfer through retained benchmark evidence

## What the current evidence helps with

- clearer definition of the taught object: the agentic system rather than the model weights
- clearer mechanism of action: externalized reusable protocol artifacts
- measurable utility: repeated hosted within-model uplift and bounded local resilience effects
- stronger enablement story: the repo already contains concrete episodes, protocol artifacts, benchmark packets, review procedures, and evidence chains

## What the current evidence does not yet establish

- that the broad methodology is novel over prior art
- that the narrower integrated workflow is nonobvious over known agent-skill, prompt-engineering, workflow-automation, and evaluation patterns
- that a software-process claim will survive subject-matter-eligibility scrutiny if drafted at too abstract a level
- that the best claim boundary has been isolated cleanly enough for counsel filing

## Current prior-art risk buckets

- prompt engineering and system-prompt pattern libraries
- agent skill frameworks and tool-use skills
- workflow orchestration and SOP/checklist systems
- evaluator or verifier backed agent loops
- benchmarked instruction-following improvement studies

The practical risk is not that the project has no invention-shaped material. The risk is that a broad claim would collapse into combinations of already-familiar control ideas.

## Practical patent position today

The repo supports a defensible internal statement:

`The Teaching program may contain patentable subject matter in the narrower integrated methodology for lesson-to-protocol conversion, agent-system teaching, and measured protocol-mediated uplift, but formal patentability remains unproven pending targeted prior-art review and claim drafting.`

The repo does not yet support this stronger statement:

`The Teaching methodology is patentable.`

## Recommended next steps before counsel review

1. Freeze the terminology:
   - agent
   - model
   - protocol
   - teaching
   - taught condition
   - baseline condition
2. Produce a claim-shape memo that separates:
   - likely patentable core
   - likely obvious support material
   - likely overbroad/abstract claim territory
3. Run a focused prior-art review against:
   - agent skills
   - prompt/program-of-thought or workflow-control methods
   - verifier/reviewer loop architectures
   - instruction-to-procedure conversion systems
4. Preserve conception and authorship records for:
   - lesson-to-protocol conversion
   - reviewer architecture
   - benchmark/evidence integration
5. Keep external disclosure conservative until claim boundaries are reviewed.

## Current disclosure posture

Publication work may continue internally, but external publication should keep using the narrower empirical framing unless and until patent-review strategy is resolved.

That means:

- do not overstate novelty as if it is already established
- do not frame the broad concept of reusable instructions as the invention
- preserve the distinction between the paper's empirical claim and any narrower invention claim

## Related repo artifacts

- `docs/decisions/D001-publication-and-ip-gate-initial.md`
- `docs/evidence/manuscript-draft-v1.md`
- `docs/evidence/manuscript-claim-matrix-v1.md`
- `docs/evidence/pre-l2-journal-readiness-status-v1.md`
