# Patentability Claim-Shape Memo V1

Date: 2026-03-28
Status: internal scoping memo, not legal opinion

## Purpose

Turn the current patentability discussion into concrete claim-boundary guidance before any counsel review or broader external disclosure.

## Working invention target

The strongest candidate is not the broad concept of reusable instructions for agents.

The strongest current invention-shaped target is a narrower methodology in which:

- a human performs or understands a task and extracts a lesson
- that lesson is transformed into a reusable protocol artifact
- the protocol artifact is supplied to an operational agentic system rather than used to change model weights
- the agent executes under explicit control structure beyond simple ordered steps
- the system preserves evidence that the taught condition changed later behavior relative to a weaker baseline

## Terms to freeze

- `model`: the underlying inference engine
- `agent`: the task-executing system consisting of the model plus the externally supplied control structure required for action
- `protocol`: the reusable control artifact that governs execution, validation, halting, handoff, and evidence requirements
- `teaching`: converting human-discovered task knowledge into reusable protocol artifacts that later change agent behavior
- `taught condition`: execution with the protocol artifact present
- `baseline condition`: execution without that protocol artifact or with a materially weaker control structure

## Candidate claim center

The candidate center should emphasize the integrated lesson-to-protocol pipeline, not the generic fact that an AI system can follow instructions.

Elements that appear most important:

- lesson extraction from human task performance or human task knowledge
- formal protocolization of that lesson into a reusable artifact
- agent execution under protocol controls including at least some of:
  - validation gates
  - stop conditions
  - uncertainty escalation rules
  - artifact-retention requirements
  - reviewer or verifier checks
  - handoff rules
- retained evidence showing agent-level uplift under baseline-versus-taught comparison

## Claim territory that looks too broad

- teaching an AI agent
- teaching an agent without retraining
- using protocols to improve an agent
- reusable instructions for agents
- workflow guidance for language-model agents

These formulations are too exposed to obviousness attacks from combinations of prompts, skills, SOPs, workflow orchestration, verifier loops, and agent-tool frameworks.

## Claim territory that may be more defensible

- a system and method for transforming human-discovered task lessons into protocol artifacts with defined control fields and execution constraints
- an agent-execution architecture in which the protocol artifact governs validation, halting, evidence retention, and escalation behavior
- a teaching pipeline that measures whether the protocolized lesson causes later agent behavior to change under a retained benchmark comparison
- a protocol artifact schema that is narrower than ordinary prompts because it encodes execution controls and evidence rules rather than text guidance alone

## Likely obvious support material

Useful for enablement and story, but risky as the invention center:

- generic benchmark scoring
- ordinary A/B comparison framing
- ordinary prompt wording improvements
- packaging a checklist or procedure as markdown
- saying the model itself is unchanged
- ordinary reviewer or QA steps when not structurally integrated into the method

## Distinction from agent skills

The nearest comparison class is reusable agent skills.

The current best internal distinction is:

- `skill`: reusable execution asset
- `procedure`: ordered step list
- `protocol`: broader control structure that governs execution, validation, halting, handoff, and evidence

The likely invention candidate is not the existence of reusable skills by itself. It is the integrated methodology that turns human lessons into protocol artifacts and uses those artifacts to teach the operational agentic system under measured conditions.

## Current prior-art review targets

Before any stronger patentability statement, prior-art review should focus on at least:

- prompt libraries and system-prompt frameworks
- agent skill frameworks
- workflow orchestration and SOP automation systems
- verifier-backed or reviewer-backed agent loops
- instruction-to-procedure generation systems
- benchmarked studies on instruction-mediated agent improvement

## Practical internal position

The repo can currently support this statement:

`The program may contain patentable subject matter in a narrower integrated lesson-to-protocol and agent-control methodology, but patentability remains unproven pending targeted prior-art review and claim drafting.`

The repo cannot yet support this statement:

`The Teaching methodology is patentable.`

## Next actions

1. Keep the paper's empirical framing narrower than any future invention claim.
2. Run a focused prior-art sweep against the identified comparison classes.
3. Preserve conception records around lesson extraction, protocol schema design, reviewer architecture, and benchmark/evidence integration.
4. Prepare a counsel-facing memo only after the prior-art sweep identifies a stable claim center.

