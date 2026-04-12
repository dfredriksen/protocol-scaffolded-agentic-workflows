# H006 - Ollama Install Packet

## Purpose
Unblock the low-parameter uplift lane by installing or exposing a local Ollama runtime.

## Requested action
Install Ollama locally, or expose the existing install on PATH, so the low-parameter/open-weight branch can run BP001 smoke tests.

## Required confirmation
- `ollama --version` works from a shell in this workspace
- at least one candidate model can be pulled or is already available
- basic runtime details are recorded:
  - Ollama version
  - model tag
  - quantization if relevant
  - basic hardware notes

## Suggested first candidates
- very small instruct:
  - Qwen2.5 3B Instruct
- small coding-capable:
  - Qwen2.5-Coder 7B Instruct
- mid-sized control:
  - Llama 3.1 8B Instruct

## Follow-on validation steps
1. run `ollama --version`
2. confirm one candidate model is available
3. execute one BP001 baseline run
4. execute one BP001 taught run
5. record results in `docs/benchmarks/open-weight-run-sheet-v1.md`

## Notes
- This packet is about runtime access only, not about selecting the final open-weight publication set.
