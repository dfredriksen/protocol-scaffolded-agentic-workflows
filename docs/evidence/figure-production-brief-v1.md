# Figure Production Brief V1

## Purpose
Translate the planned manuscript figures into production-ready instructions so the visuals can be created without changing the paper's claim discipline.

## Figure 1. Teaching Methodology Flow

### Goal
Show the operational research loop from raw episode experience to reusable protocol evidence.

### Recommended format
- left-to-right process diagram
- six boxes with arrows
- one short note below the pipeline explaining retained-artifact discipline

### Required nodes
1. teaching episode
2. protocol artifact
3. benchmark packet
4. retained runs
5. scored comparison
6. synthesis memo

### Required emphasis
- "teaching" means externalized procedural structure
- protocol artifacts are reusable across models and tasks
- retained outputs make later audit and review possible

### Source assets
- `docs/process/teaching-episode-protocol.md`
- `docs/process/planning-protocol.md`
- `docs/process/benchmark-evaluation-protocol.md`
- `docs/evidence/figure-captions-draft-v1.md`

### Do not imply
- an autonomous controller/compiler layer already validated separately

## Figure 2. Hosted Versus Local Evidence Layers

### Goal
Show the two-layer manuscript posture: hosted as primary evidence and local as bounded resilience evidence.

### Recommended format
- stacked or side-by-side two-layer diagram
- top or left panel for hosted evidence
- bottom or right panel for local evidence
- small callout for pending `L2`

### Required content
- hosted layer:
  - providers: OpenAI, Google, Anthropic
  - benchmark families: `BP001` through `BP004`
  - status: main publication surface
- local layer:
  - open-weight `BP001`
  - `BP007B` diagnostic planning branch
  - `BP008` workflow branch
  - status: bounded resilience surface

### Required emphasis
- hosted evidence is the quantitative spine
- local evidence supports fallback and resilience claims
- local evidence is not replacement-quality parity

### Source assets
- `docs/benchmarks/cross-provider-synthesis-2026-03-13.md`
- `docs/benchmarks/local-evidence-synthesis-2026-03-14.md`
- `docs/decisions/D005-publication-position-post-local-branch.md`
- `docs/evidence/manuscript-claim-matrix-v1.md`

### Do not imply
- that `L2` review is already complete
- that local and hosted evidence are interchangeable

## Figure 3. BP006 Architecture Outcomes

### Goal
Show that multi-model improvement depends on executor strength and reviewer quality, not just the presence of two models.

### Recommended format
- 3-column grouped comparison
- columns:
  - correction wins
  - takeover wins
  - no-gain / weak-gain cases
- include small pair labels under each example

### Required example pairs
- correction wins:
  - `P1` `gpt-4.1` executor + `claude-sonnet-4-6` reviewer
  - `P4` `claude-sonnet-4-6` executor + `gpt-4.1` reviewer
- takeover wins:
  - `P2` `gemini-2.5-flash` executor + `gpt-4.1` reviewer
  - `P5` `deepseek-coder-v2:16b-lite-instruct-q3_K_S` executor + `gpt-4.1` reviewer
- weak/no-gain:
  - `P3` `gpt-4.1` executor + `gemini-2.5-flash` reviewer
  - `P6` `deepseek-coder-v2:16b-lite-instruct-q3_K_S` executor + `llama3.2:3b` reviewer

### Required emphasis
- stronger review can help weak executors
- strong executors often gain more from correction than replacement
- weak review can remove the MoE advantage
- hybrid local-plus-cloud is stronger than the first all-local fallback pair

### Source assets
- `docs/benchmarks/bp006-cross-pair-synthesis-2026-03-14.md`
- `docs/benchmarks/bp006-resilience-comparison-2026-03-14.md`
- `docs/evidence/manuscript-tables-v1.md`
- `docs/evidence/figure-captions-draft-v1.md`

### Do not imply
- that the full exhaustive 20-pair matrix is already complete
- that one MoE architecture dominates universally

## Global production notes
- Mark all figures as draft until `L2` review status is integrated.
- Keep wording aligned with the manuscript claim matrix.
- Prefer simple, audit-friendly visuals over decorative complexity.
- If any score value is shown directly in a figure, verify it against `docs/evidence/manuscript-tables-v1.md`.
