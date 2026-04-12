# H004 - xAI Runtime Permission Packet

## Target provider
xAI

## Target model or model class
- `grok-code-fast-1`
- `grok-4-1-fast-non-reasoning`
- model classes: smaller coding-capable and general-purpose

## Why it is needed
These are the currently preferred hosted models for starting the compact matrix because the local repository already contains a Grok CLI path and an `XAI_API_KEY` marker.

## Exact blocker
- A minimal live CLI call through `C:\Users\Dan\Desktop\Projects\Model-Inventory\grok_cli.py` returned `HTTP 403: Forbidden` on 2026-03-13.
- A multi-model validation pass against `https://api.x.ai/v1` also failed for:
  - `grok-4-1-fast-reasoning`
  - `grok-4-1-fast-non-reasoning`
  - `grok-code-fast-1`
- Provider body returned `error code: 1010`.
- This indicates that the runtime path exists, but the current key, account state, billing, or endpoint authorization is not sufficient for benchmark execution.

## Requested human action
- Verify that the xAI API key is valid for the intended account and endpoint.
- Check what `error code: 1010` means for this account in xAI.
- Confirm whether the target models are permitted for the current account.
- Confirm whether any org, billing, or permission step is still missing.
- If needed, provide a corrected non-secret runtime path or usage constraint note.

## Evidence to return after setup
- confirmation that the xAI path is callable
- any model-level access restrictions
- billing, rate-limit, or policy constraints
- setup date
