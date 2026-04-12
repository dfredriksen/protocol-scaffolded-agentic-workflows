# H001 - OpenAI Model Access Packet

## Target provider
OpenAI

## Target model or model class
- `gpt-4.1`
- model class: frontier coding

## Why it is needed
The compact cross-model benchmark matrix needs one frontier coding model outside the currently verified xAI path so the Teaching methodology can be tested across model classes and not only within xAI.

## Exact blocker
- `gpt-4.1` is listed in the local `Model-Inventory`, but no repo-visible OpenAI API credential, deployment metadata, or validated runtime path has been confirmed for benchmark execution.

## Requested human action
- Confirm whether OpenAI API access for `gpt-4.1` is available for this benchmark environment.
- If yes, provide the non-secret runtime path and any org/project or quota constraints.
- If no, explicitly mark it unavailable so the benchmark can proceed with alternate candidates.

## Evidence to return after setup
- confirmation that access exists
- runtime or invocation path to use
- org/project selection if relevant
- any rate-limit, budget, or policy constraints
- setup date
