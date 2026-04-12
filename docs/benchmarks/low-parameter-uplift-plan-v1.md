# Low-Parameter Uplift Plan V1

## Purpose
Define a focused subtrack for testing whether protocol-based teaching yields material gains on lower-parameter and open-weight models, especially through a local Ollama path.

## Why this matters
- If the teaching effect only appears on frontier models, the methodology may be dismissed as scale-dependent.
- If lower-parameter models improve materially relative to their own baselines, the result is stronger scientifically and more valuable commercially.
- This subtrack tests whether protocol teaching can make weaker models viable on tasks they would otherwise handle poorly.

## Core hypothesis
Lower-parameter models will likely have lower absolute scores than frontier models, but may show larger relative gains from teaching on structured tasks.

## Research framing
- Primary question:
  - does the taught protocol improve the lower-parameter model relative to its own baseline?
- Secondary question:
  - is the relative uplift larger than for stronger hosted models?
- Non-goal:
  - proving that small models match frontier models in absolute performance

## Recommended benchmark priority
1. Start with BP001 planning.
   - Planning quality is more likely to show interpretable uplift on smaller models.
2. Add BP002 only after a model shows basic instruction reliability.
   - Workflow discipline is likely harder for weaker models and may require more explicit protocol wording.

## Candidate capability lanes
- Lane A: very small instruct model
  - purpose: test whether teaching rescues otherwise brittle planning behavior
- Lane B: small coding-capable instruct model
  - purpose: test whether protocol teaching improves practical coding-oriented planning
- Lane C: mid-sized open-weight model if hardware allows
  - purpose: compare whether uplift scales smoothly with model capability

## Suggested open-weight candidates
These are candidate families, not locked selections:
- Qwen2.5-Coder 3B Instruct
  - preferred candidate for the small coding-capable lane on the current machine because it fits the one-model-at-a-time storage and hardware limits
- Qwen2.5-Coder 7B Instruct
  - reserve candidate only if additional storage headroom is available and the 3B coding lane proves worth expanding
- DeepSeek-Coder V2 Lite Instruct
  - good candidate if Ollama packaging and local fit are workable
- Llama 3.1 8B Instruct
  - useful general instruct control if coding-specialized models are unstable
- Qwen2.5 3B Instruct or similar small instruct model
  - useful for the very small-model uplift lane

## Selection rule
- Prefer models that:
  - are available in Ollama or a simple hosted open-weight path
  - fit available local hardware or affordable hosted inference
  - have stable instruct behavior on structured text tasks
  - can be run in a one-model-at-a-time workflow on the current disk budget

## Measurement rule
- Focus on within-model uplift first.
- Report both:
  - absolute score
  - relative change from baseline

## Threats to validity
- local runtime instability may be mistaken for model weakness
- quantization choice may materially change results
- open-weight prompt formatting may differ from hosted API models

## Recommended next outputs
- Ollama/local runtime validation checklist
- candidate-model shortlist with hardware fit notes
- open-weight run sheet extension
