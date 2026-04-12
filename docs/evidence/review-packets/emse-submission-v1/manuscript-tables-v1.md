# Manuscript Tables V1

## Table 1. Hosted Cross-Provider Within-Model Uplift

| Provider | Model | BP001 baseline | BP001 taught | BP002 baseline | BP002 taught | BP003 baseline | BP003 taught | Main pattern |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| OpenAI | `gpt-4.1` | `3/10` | `9/10` | `5/10` | `9/10` | `8/10` | `10/10` | large planning uplift and repeated workflow uplift |
| Google | `gemini-2.5-flash` | `3/10` | `7/10` | `8/10` | `9/10` | `8/10` | `10/10` | structural planning uplift and clearer gains on harder workflow tasks |
| Anthropic | `claude-sonnet-4-6` | `1/10` | `8/10` | `8/10` | `9/10` | `8/10` | `10/10` | strongest rescue effect on planning and repeated workflow uplift |

## Table 2. Local Evidence Ladder

| Surface | Strongest retained result | What it shows | Main limitation |
| --- | --- | --- | --- |
| Open-weight `BP001` | `llama3.1:8b`, `llama3.2:3b`, and `qwen2.5:3b` each reach `6/10` taught | teaching helps weaker local models structurally on planning | absolute planning fidelity remains mixed |
| `BP007B` verifier-backed planning | `T07` `llama3.2:3b` + `gpt-4.1` at `4/10` to `4/10`, `pass-core` | false-positive review can be eliminated on planning | stronger review did not rescue weak local planning quality |
| `BP008` workflow quality-bar | `W01` `llama3.2:3b` + `gpt-4.1` at `4/10` to `5/10`, `pass-core`; `W03` `llama3.2:3b` + `qwen2.5-coder:3b` at `2/10` to `4/10`, `pass-core` | concrete workflow tasks preserve more local-model value and support a real all-local fallback mode | all-local review remains softer and lower quality than hosted review |

## Table 3. BP006 Mixture-of-Experts Summary

| Pair | Executor | Reviewer | Baseline | Single-model taught | Correction | Takeover | Best condition |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `P1` | `gpt-4.1` | `claude-sonnet-4-6` | `4/10` | `5/10` | `6/10` | `5/10` | correction |
| `P2` | `gemini-2.5-flash` | `gpt-4.1` | `4/10` | `5/10` | `5/10` | `6/10` | takeover |
| `P3` | `gpt-4.1` | `gemini-2.5-flash` | `4/10` | `5/10` | `5/10` | `5/10` | no MoE gain |
| `P4` | `claude-sonnet-4-6` | `gpt-4.1` | `5/10` | `7/10` | `8/10` | `6/10` | correction |
| `P5` | `deepseek-coder-v2:16b-lite-instruct-q3_K_S` | `gpt-4.1` | `2/10` | `3/10` | `5/10` | `6/10` | takeover |
| `P6` | `deepseek-coder-v2:16b-lite-instruct-q3_K_S` | `llama3.2:3b` | `2/10` | `3/10` | `4/10` | `4/10` | modest local-local gain |

## Table 4. Validity Limits And Remaining Caveats

| Area | Current state | Consequence |
| --- | --- | --- |
| Evaluator independence | evidence remains mostly `L0/L1`; Anthropic `L2A` review and a completed human `L2` memo both agree with the stronger condition on the reviewed hosted `BP001` and `BP002` runs | evaluator independence is now supported on the hosted slice, and the human memo's per-column totals are transcribed locally; remaining caution concerns interpretation of the memo's rubric-row semantics |
| Protocol implementation | taught condition embeds the protocol directly | current results show protocol-following effects, not yet a separate controller effect |
| Workflow realism | some workflow evidence is proxy-materialized rather than native live-tool execution | real-world tool robustness is still only partially tested |
| Local review quality | all-local fallback is weaker than hosted review | local branch supports resilience claims, not replacement-quality claims |
| Local hardware/runtime | one-model-at-a-time machine, slower local inference | local evidence remains narrower and more operationally constrained than hosted evidence |

## Usage note
These tables are manuscript-ready scaffolds based on current retained evidence. They should be revised only if later evidence changes the hosted slice or if the venue requires a different presentation format.
