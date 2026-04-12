# H002 - Anthropic Model Access Packet

## Target provider
Anthropic

## Target model or model class
- `claude-3-5-sonnet`
- model class: alternate general/coding candidate

## Why it is needed
Anthropic can serve as an alternate non-xAI benchmark path if OpenAI is unavailable or if the study needs a second provider comparison.

## Exact blocker
- The model exists in the local inventory, but no repo-visible credential, deployment metadata, or validated runtime path has been confirmed.

## Requested human action
- Confirm whether Anthropic API access for `claude-3-5-sonnet` is available for this benchmark environment.
- Provide non-secret runtime and constraint metadata if available.

## Evidence to return after setup
- confirmation that access exists
- runtime or invocation path to use
- any rate-limit, budget, or policy constraints
- setup date
