# BP006 Exhaustive Pairing Matrix V1

## Purpose
Expand BP006 from a compact architectural sample into an explicit ordered-pair execution matrix over the currently validated models.

## Eligible models in scope
### Hosted
- `gpt-4.1`
- `claude-sonnet-4-6`
- `gemini-2.5-flash`

### Open-weight / local
- `deepseek-coder-v2:16b-lite-instruct-q3_K_S`
- `llama3.2:3b`

## Scope rule
- Treat MoE pairings as ordered.
- `A -> B` is different from `B -> A` because executor and reviewer roles are not interchangeable.
- Exclude self-review pairs from the exhaustive matrix because they collapse into the existing single-model taught lane.

## Pair count
- Total eligible models: `5`
- Ordered non-self pairs: `5 x 4 = 20`

## Pair families
### Hosted-hosted
1. `gpt-4.1` -> `claude-sonnet-4-6`
2. `gpt-4.1` -> `gemini-2.5-flash`
3. `claude-sonnet-4-6` -> `gpt-4.1`
4. `claude-sonnet-4-6` -> `gemini-2.5-flash`
5. `gemini-2.5-flash` -> `gpt-4.1`
6. `gemini-2.5-flash` -> `claude-sonnet-4-6`

### Hybrid hosted executor -> local reviewer
7. `gpt-4.1` -> `deepseek-coder-v2:16b-lite-instruct-q3_K_S`
8. `gpt-4.1` -> `llama3.2:3b`
9. `claude-sonnet-4-6` -> `deepseek-coder-v2:16b-lite-instruct-q3_K_S`
10. `claude-sonnet-4-6` -> `llama3.2:3b`
11. `gemini-2.5-flash` -> `deepseek-coder-v2:16b-lite-instruct-q3_K_S`
12. `gemini-2.5-flash` -> `llama3.2:3b`

### Hybrid local executor -> hosted reviewer
13. `deepseek-coder-v2:16b-lite-instruct-q3_K_S` -> `gpt-4.1`
14. `deepseek-coder-v2:16b-lite-instruct-q3_K_S` -> `claude-sonnet-4-6`
15. `deepseek-coder-v2:16b-lite-instruct-q3_K_S` -> `gemini-2.5-flash`
16. `llama3.2:3b` -> `gpt-4.1`
17. `llama3.2:3b` -> `claude-sonnet-4-6`
18. `llama3.2:3b` -> `gemini-2.5-flash`

### Fully local
19. `deepseek-coder-v2:16b-lite-instruct-q3_K_S` -> `llama3.2:3b`
20. `llama3.2:3b` -> `deepseek-coder-v2:16b-lite-instruct-q3_K_S`

## Execution policy
- Keep the primary task fixed at `BP006-T1` for all exhaustive-pair runs.
- Retain all four conditions (`A/B/C/D`) for every pair.
- Reuse existing runs instead of rerunning pairs already retained.
- Prefer synthesis checkpoints after each pair family, not just at the very end.

## Operational constraints
- Hosted pairs are cheap and should run first when not already retained.
- Hybrid pairs are next because they test the practical fallback path.
- Fully local pairs are slowest and most storage-sensitive on this machine.
- The machine should still be treated as a one-model-at-a-time environment for local models beyond the currently installed pair.

## Interpretation rule
- The exhaustive matrix is not a leaderboard.
- The primary question remains architectural:
  - when does correction beat single-model taught?
  - when does takeover beat correction?
  - how does reviewer quality change the result?
