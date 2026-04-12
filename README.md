# Quantyra Teaching Artifacts

Open artifact repository for the paper:

> **Protocol-Mediated Uplift in Agentic Workflows: Cross-Provider Evidence and Bounded Local Resilience**

This repository is the public evidence surface for the current Quantyra Teaching paper. It exposes the manuscript, supplement, benchmark packets, retained run artifacts, reviewer materials, synthesis notes, figures, and selected reproducibility scripts used in the paper's current release path.

Repository URL:

- `https://github.com/dfredriksen/quantyra-teaching-artifacts`

## Scope

This repository is intentionally broad within the paper boundary. It includes:

- manuscript sources and submission-facing files
- benchmark packets and task/source-truth materials
- retained run artifacts across hosted and local branches
- human and model-based hosted review materials
- manuscript figures and evidence memos
- reviewer packet materials
- selected benchmark and packaging scripts

The main exclusions are Drive/OAuth helper scripts and other credential-handling glue that are operational rather than research-facing.

## Key entry points

- Journal upload set:
  - `docs/evidence/review-packets/emse-submission-v1/upload-set/`
- Branded manuscript review copy:
  - `docs/evidence/review-packets/emse-submission-v1/manuscript-draft-v1.docx`
- Manuscript source:
  - `docs/evidence/manuscript-draft-v1.md`
- Supplement source:
  - `docs/evidence/manuscript-supplement-v1.md`
- Benchmark packets:
  - `docs/benchmarks/packets/`
- Retained pilot and run artifacts:
  - `docs/benchmarks/pilots/`
- Hosted human `L2` review artifacts:
  - `docs/benchmarks/reviews/l2-hosted-matrix/`
- Hosted model-based `L2A` review artifacts:
  - `docs/benchmarks/reviews/l2a-hosted-matrix/`

## Public release posture

Quantyra is treating this work as open research. The goal of this repository is to maximize public visibility into the paper's empirical spine rather than expose only a minimal supplement bundle.

Where the paper references retained evidence, benchmark packets, review materials, or synthesis memos, the expectation is that those materials are available here unless they are purely local machine byproducts or credential-bearing operational helpers.

## Directory map

- `docs/benchmarks/` benchmark specifications, run sheets, retained runs, and review outputs
- `docs/evidence/` manuscript sources, figures, submission packet materials, and evidence memos
- `docs/hitl/` distinct-evaluator review packet and human-review handoff materials
- `scripts/` selected reproducibility and packaging scripts

## Citation

If you use this repository, cite it via [`CITATION.cff`](./CITATION.cff).

## License

All repository contents are released under the MIT License for maximal reuse. See [`LICENSE`](./LICENSE).
