# BP007B T08 Constrained DeepSeek Rerun Note

- This run retries the DeepSeek verifier-backed follow-on under a constrained local profile.
- Stabilization changes:
  - CPU execution
  - `num_ctx=1024`
  - capped output length
  - unload-after-call behavior
- Purpose:
  - verify whether DeepSeek can complete the verifier-backed loop on this machine
  - separate runtime instability from benchmark quality
