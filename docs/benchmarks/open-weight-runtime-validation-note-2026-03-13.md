# Open-Weight Runtime Validation Note - 2026-03-13

## Purpose
Record the first concrete local-runtime validation cycle for the low-parameter uplift lane.

## Initial blocked state
- Validation command:
  - `ollama --version`
- Initial result:
  - failed with `CommandNotFoundException`
  - `ollama` was not callable in the environment at the start of the triage cycle

## Runtime installation outcome
- Ollama was extracted locally to:
  - `C:\Users\Dan\AppData\Local\Programs\Ollama`
- Direct client version check:
  - client version `0.17.7`
- Local service:
  - `ollama serve` started successfully

## First model validation
- Pulled:
  - `qwen2.5:3b`
- Registered local model size:
  - `1.9 GB`
- Model store after pull:
  - about `1.8 GB`
- Local API smoke check:
  - prompt: `Reply with exactly: ollama_ok`
  - result: returned `ollama_ok`

## Performance note
- The first successful local inference was slow because model load dominated the request.
- Observed first-call total duration was about `12.6s`, with most of that in model load.
- This is slow but operationally usable for a first open-weight smoke run.

## Disk-space note
- After installation and one small model pull, remaining free space on `C:` was about `2.6 GB`.
- This machine should be treated as a one-model-at-a-time open-weight environment.
- During the first BP001 execution attempt, free space dropped further to about `0.27 GB`.
- That is too little headroom for safe retained-artifact generation, so benchmark execution was paused before writing the smoke-run outputs.

## Interpretation
- The low-parameter lane is no longer `blocked-runtime`.
- The runtime path is now validated for one small local model.
- The current blocker for actual benchmark execution is storage headroom, not runtime absence.

## Operational implication
- BP001 is technically eligible for a first open-weight smoke run on `qwen2.5:3b`, but the current machine state is storage-constrained.
- Do not pull a second model before either deleting the current one or freeing additional disk space.
- Treat the first open-weight benchmark execution as a cautious smoke lane, not yet a broad multi-model matrix.

## Next actions
- free additional disk space before any retained BP001 run, or remove and later repull the current model
- if space is needed immediately, remove the model with:
  - `ollama rm qwen2.5:3b`
- once headroom is restored:
  - run one BP001 baseline smoke execution on `qwen2.5:3b`
  - run one BP001 taught smoke execution on `qwen2.5:3b`

## Follow-on runtime cycle
- `qwen2.5:3b` was later retired after the very-small-model smoke lane was completed.
- A second local model was then pulled successfully:
  - `qwen2.5-coder:3b`
- Registered local model size:
  - `1.9 GB`
- Local API smoke check:
  - prompt: `Reply with exactly: ollama_coder_ok`
  - result: returned `ollama_coder_ok`

## Updated interpretation
- The local Ollama path is now validated for both:
  - one very small instruct model
  - one small coding-capable model
- The machine remains a one-model-at-a-time environment, but the open-weight lane is no longer blocked on model-class selection for the next BP001 run.

## BP007B runtime follow-on
- A later verifier-backed BP007B follow-on attempted to reuse:
  - `deepseek-coder-v2:16b-lite-instruct-q3_K_S`
- Initial attempts failed on the local Ollama path:
  - `unable to allocate CUDA_Host buffer`
  - `cudaMalloc failed: out of memory`
- Follow-on troubleshooting showed that DeepSeek is stable on this machine only under a constrained profile:
  - CPU execution
  - `num_ctx=1024`
  - capped output length
  - unload-after-call behavior
- Interpretation:
  - DeepSeek remains usable on this machine for constrained local execution
  - but its verifier-backed BP007B rerun is still weak on quality even after runtime stabilization
  - the next BP007B executor should therefore be a smaller local model for quality reasons, not because DeepSeek is completely unusable
