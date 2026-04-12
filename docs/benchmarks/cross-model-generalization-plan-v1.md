# Cross-Model Generalization Plan V1

## Purpose
Evaluate whether the Teaching methodology remains effective across several model types rather than only within a single model/operator setup.

## Why this matters
- A within-model result can still be dismissed as model-specific.
- Cross-model results help separate protocol quality from base-model quality.
- A publication claim is stronger if the teaching effect survives across multiple capability tiers.

## Recommended study order
1. Complete `L2` evaluator review on existing retained runs.
2. Run a compact cross-model matrix.
3. Expand only after the compact matrix is stable and interpretable.

## Compact matrix
- Model class A: frontier coding model
- Model class B: smaller or cheaper coding-capable model
- Model class C: general-purpose model with weaker tool execution

Optional later expansion:
- Model class D: open-weight instruct model, especially for low-parameter uplift testing via Ollama or a hosted open-weight path

## Initial task matrix
- BP001 planning benchmark
  - baseline condition
  - taught-protocol condition
- BP002 workflow benchmark
  - baseline condition
  - taught-protocol condition

This yields:
- 3 model classes
- 2 benchmark families
- 2 conditions
- minimum 12 retained runs before transfer variants

## Fixed controls
- same benchmark packets
- same scoring rubric
- same retained-output requirements
- same stop conditions
- same evaluator worksheet format

## Variables allowed to differ
- model identity
- model access path or runtime interface
- model-specific rate limits or context limits, provided these are logged
- for open-weight models, host type and billing mode

## What to log for each model
- provider
- model name or deployment name
- access path
- date of run
- any HITL setup required
- any model-specific constraints

## Interpretation rules
- Do not treat the study as a leaderboard.
- Primary question: does the taught protocol improve the model relative to its own baseline?
- Secondary question: is the size of the improvement similar across model classes?

For low-parameter/open-weight work:
- emphasize relative uplift over absolute parity with frontier models

## Threats to validity
- access asymmetry between models
- different tool affordances across providers
- hidden prompt-budget differences
- non-equivalent rate-limit behavior
- open-weight runtime differences that are really host effects rather than model effects

## Next outputs required
- model roster and eligibility criteria
- HITL access setup packet
- cross-model run sheet
- model-by-model retained run folders
- budget memo and open-weight decision rule
- low-parameter uplift subtrack and Ollama validation checklist
