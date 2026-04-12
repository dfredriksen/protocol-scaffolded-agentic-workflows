# Manuscript Outline V1

## Working title
Teaching Agents Through Protocols: Evidence for Cross-Provider Uplift and Bounded Local Resilience

## Abstract shape
- problem: agentic systems often fail through weak planning, poor gate discipline, and inconsistent handoff quality
- method: convert lessons from teaching episodes into reusable protocol artifacts and benchmark their effects
- primary result: repeated within-model uplift across hosted providers on planning and workflow families
- secondary result: bounded positive effects on local open-weight models, strongest on concrete workflow artifact tasks
- limit: publication-grade independence still depends on `L2` review

## 1. Introduction
- motivate “teaching” as protocolization rather than one-off prompting
- distinguish protocol teaching from static prompt engineering
- state the two-layer evidence posture:
  - hosted primary evidence
  - local resilience evidence

## 2. Methodology
- teaching episodes and protocol externalization
- benchmark-family design:
  - BP001 planning
  - BP002-BP004 workflow progression
  - BP006 mixture-of-experts
  - BP007/BP007B quality-bar design
  - BP008 workflow-task local branch
- scoring and retained-artifact discipline
- evaluator-rigor ladder and current `L0/L1` versus pending `L2`

## 3. Hosted Results
- cross-provider within-model uplift summary
- workflow gains versus planning gains
- BP003/BP004 as stronger workflow evidence than BP002 alone
- transfer and harder-packet discussion

## 4. Local and Resilience Results
- open-weight BP001 comparison as mixed structural uplift evidence
- BP007B as a negative-but-useful planning-bar result
- BP008 as the strongest local branch
- all-local fallback result and its limits

## 5. Mixture-of-Experts Results
- correction versus takeover
- dependence on executor strength and reviewer strength
- hosted-hosted, hybrid, and local-local interpretation

## 6. Discussion
- protocol teaching appears robust across providers
- task-family choice matters sharply for local models
- review quality matters, but cannot rescue every task family
- why local evidence is secondary rather than primary

## 7. Threats to Validity
- same-operator scoring
- pending `L2` review
- prompt-level protocol implementation rather than a separate controller
- proxy-materialized versus native tool execution
- local hardware/runtime constraints

## 8. Conclusion
- strongest current claim:
  - protocol teaching improves within-model outcomes across hosted providers
- secondary claim:
  - bounded local resilience effects exist, especially on workflow artifact tasks
- next gate:
  - `L2` review before stronger external claims

## Target figures and tables
- Figure 1: teaching methodology pipeline
- Table 1: hosted within-model uplift matrix
- Table 2: local evidence ladder
- Table 3: BP006 architecture comparison
- Figure 2: hosted versus local evidence-layer diagram

## Claim discipline
- hosted results are the main quantitative spine
- local results are a bounded resilience section
- `L2` remains the main publication-grade gate
