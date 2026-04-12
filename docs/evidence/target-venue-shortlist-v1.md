# Target Venue Shortlist V1

## Purpose
Convert the repo's broad venue-class language into a concrete shortlist for manuscript planning.

## Current repo state

The repo does not currently commit to a single target venue. The closest existing statement is in `docs/charter.md`, which frames the work as suitable for an agentic systems, software engineering, or HCI venue.

## Recommended shortlist

### 1. ICSE Research Track or adjacent ICSE track

**Why it fits**
- The paper is strongly grounded in software-engineering questions:
  - agent planning quality
  - workflow discipline
  - review loops
  - retained-artifact and evaluation protocol design
- The hosted matrix and the benchmark methodology are both legible to a software engineering audience.

**Best paper angle**
- protocolized teaching as a methodology for improving agentic coding systems
- benchmark design and retained-artifact evaluation for agent engineering

**Current suitability**
- strong fit if the manuscript foregrounds software engineering methodology and evaluation rigor over general AI framing

**Official venue note**
- ICSE 2027 Research Track deadlines are already listed publicly on the official conference site.

### 2. CHI or another SIGCHI venue

**Why it fits**
- The paper also has a strong human-in-the-loop and operational-methodology angle:
  - how people teach agents
  - protocol externalization
  - review and governance loops
  - handoff quality and safe workflow design

**Best paper angle**
- teaching as a human-agent coordination method
- protocol artifacts as a bridge between instruction, evaluation, and safer agent behavior

**Current suitability**
- better fit if the manuscript is revised to foreground human teaching, review, and governance rather than benchmark performance alone

**Official venue note**
- CHI 2027 is already listed publicly by SIGCHI for May 10-14, 2027 in Pittsburgh, Pennsylvania.

### 3. AAMAS or adjacent autonomous agents venue

**Why it fits**
- The paper studies agent behavior, review architectures, takeover versus correction patterns, and local fallback modes.
- BP006 gives it a natural multi-agent or multi-model coordination story.

**Best paper angle**
- protocol teaching and reviewer architectures for autonomous or semi-autonomous agent systems

**Current suitability**
- plausible, but currently weaker than ICSE unless the manuscript is reframed more around agent architectures and less around software-engineering evaluation

## Current recommendation

### Primary recommendation
- `ICSE` family first

### Secondary recommendation
- `workshop / NIER / IVR style software-engineering path near-term`

### Third option
- `AAMAS` family if the paper is reframed around agent-architecture and reviewer-pattern results, especially BP006

## Decision rule

Choose the target venue based on the manuscript version you want to emphasize:
- software engineering methodology and evaluation: `ICSE`
- human teaching and governance of agents: `CHI` only if the manuscript is substantially reframed around human-centered contribution
- agent architecture and reviewer coordination: `AAMAS`

## External-review correction

An external readiness review retained in `docs/evidence/external-readiness-review-memo-v1.md` materially narrows the practical venue advice:
- best fit remains software engineering
- near-term realistic path is workshop / NIER / IVR style rather than main-track conference
- CHI is currently a weak fit

## Timing note

Venue dates and deadlines are time-sensitive and should be rechecked at submission time. Current official signals already confirm:
- ICSE 2027 official dates and research-track schedule exist
- CHI 2027 official event listing exists

## Source notes
- ICSE 2027 official conference and dates pages
- CHI 2027 official SIGCHI listing
- `docs/charter.md`
