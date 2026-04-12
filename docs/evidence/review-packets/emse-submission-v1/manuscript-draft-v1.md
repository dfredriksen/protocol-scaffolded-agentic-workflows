# Protocol-Mediated Uplift in Agentic Workflows: Cross-Provider Evidence and Bounded Local Resilience

## Abstract
Agentic workflows in software engineering often fail not only because of model limitations, but because execution lacks reusable procedural structure. This paper evaluates whether externalizing lessons into explicit protocol artifacts improves artifact-producing agent workflows relative to weaker baseline prompting. The primary evidence is a hosted cross-provider benchmark matrix using OpenAI, Google, and Anthropic models, where taught conditions show repeated within-model gains on planning and workflow tasks. A secondary local evidence layer examines whether those gains persist under weaker models and review conditions. The local results are smaller and are most convincing on concrete workflow artifact tasks rather than abstract planning over complex project state. Taken together, the evidence supports a bounded claim: reusable protocol artifacts improve planning and workflow reliability in hosted settings and preserve some value under degraded local conditions. The study does not support claims of hosted-quality parity, durable autonomous learning, or broad local replacement. Human `L2` and model-based `L2A` review on the hosted `BP001`/`BP002` slice support the same stronger-condition direction; the remaining caution concerns interpretation of rubric-row semantics rather than evaluator independence itself.

**Keywords:** agentic workflows; empirical software engineering; large language models; protocol scaffolding; reviewer-based evaluation

## 1. Introduction
The central question in this paper is not whether a language model can occasionally produce a strong answer. It is whether an artifact-producing agent workflow can be made more reliable when procedural knowledge is externalized into reusable, reviewable structure rather than left implicit in prompts or operator memory. That question is practical for software engineering because many workflow failures arise at the level of planning discipline, approval handling, handoff quality, and retained artifact integrity rather than at the level of raw model fluency alone.

This distinction matters because many apparent improvements in agent behavior can be explained by brittle prompt specialization. A model may appear stronger simply because it was given a longer prompt, more hints, or a narrower task surface. The intervention studied here is narrower and more operational. In this manuscript, `teaching` refers to taking a lesson from prior execution, externalizing it into a reusable protocol artifact, and then reapplying that artifact across later benchmark runs. The question is whether that form of reusable procedure produces repeated within-model gains across benchmark families and providers. The paper does not claim to demonstrate durable internal learning or autonomous skill acquisition.

The study is organized around two evidence layers. The primary layer is a hosted cross-provider matrix, where the central claim is repeated within-model uplift under taught conditions that supply reusable protocol artifacts. The secondary layer is a local open-weight evidence layer, where the claim is narrower: protocol-plus-review loops preserve some value under weaker model and review conditions, but at lower ceilings and without approaching hosted-model quality. Throughout the paper, that secondary result is described as bounded resilience rather than parity. The clearest local gains appear on concrete workflow artifact tasks rather than on abstract planning over complex project state.

The paper makes three contributions. First, it presents repeated hosted evidence that protocolized execution improves planning and workflow outcomes across multiple providers. Second, it characterizes the boundary of the effect under weaker local conditions, showing that the gain persists most clearly on concrete workflow tasks. Third, it reports a review-architecture result from the `BP006` mixture-of-experts branch, where the value of correction versus takeover depends on executor strength and reviewer quality. Together, these contributions position reusable procedural structure as a meaningful empirical control surface for agentic software-engineering workflows.

## 2. Related Work
This paper sits at the intersection of agent scaffolding, software-engineering evaluation, and reviewer-based assessment. Work on structured agent prompting and iterative refinement has already shown that explicit external procedure can materially change model behavior. ReAct couples reasoning traces with action steps, while Self-Refine studies iterative revision using explicit feedback loops (Yao et al. 2023; Madaan et al. 2023). Our contribution is narrower and more operational: rather than proposing a general prompting method, we evaluate whether reusable protocol artifacts improve artifact-grounded planning and workflow execution under repeated benchmark conditions.

The manuscript is also positioned within emerging empirical evaluation work for software-engineering agents. SWE-bench asks whether language models can resolve real GitHub issues, while AutoCodeRover frames autonomous program improvement as a software-engineering problem with explicit search and patch-generation structure (Jimenez et al. 2023; Zhang et al. 2024). The present study differs in two ways. First, the unit of intervention is a reusable protocol artifact rather than a general coding agent architecture. Second, the benchmark emphasis is on planning quality, approval handling, handoff discipline, and retained artifact integrity, not only issue resolution.

Finally, the paper relates to recent work on judge-based evaluation. G-Eval shows that rubric-guided LLM grading can correlate more strongly with human judgments than older automatic metrics, while recent survey work makes clear that judge models bring bias, calibration, and transparency risks of their own (Liu et al. 2023; Gu et al. 2024). That literature supports the design choice used here: model-based `L2A` review is treated as a secondary consistency layer, while distinct human `L2` review remains the stronger independence signal when available.

## 3. Methodology
The study operationalizes teaching through a sequence of reusable artifacts. First, a teaching episode records a task, the baseline failure mode, the lesson extracted, and the protocol steps to be reused later. Second, that lesson is externalized into a reusable protocol artifact rather than left as operator memory. Third, the protocol artifact is embedded into benchmark tasks that compare a weaker baseline condition against a taught condition. Fourth, the resulting outputs are preserved as evidence-bearing artifact chains and scored against benchmark-specific rubrics.

The benchmark families cover several related questions. `BP001` measures planning quality. `BP002` through `BP004` progressively strengthen workflow and artifact-handling demands, moving from structured workflow discipline toward higher-realism artifact creation. `BP006` studies executor-reviewer architectures, including correction and takeover patterns. `BP007` and `BP007B` study quality-bar loops and reviewer strictness. `BP008` shifts the local evidence layer toward concrete workflow artifact tasks after `BP007B` showed that stronger review alone did not rescue weak local planning quality.

Two reporting caveats are central. First, most scoring is still operator-side. The study materials include protocols and handoff assets for `L2` distinct-evaluator review, but those reviews have not yet become the dominant evidence tier across the full benchmark portfolio. Second, the taught condition currently supplies the reusable protocol artifact directly. The main effect measured here is therefore protocol-mediated performance uplift under externalized reusable procedure, not durable internal learning. The manuscript is intentionally conservative on both points.

To reduce selective-reporting risk, the submission includes a manuscript-facing supplement rather than relying only on narrative summaries. That supplement defines condition labels, reports branch-level run accounting, explains retained-versus-superseded logic, summarizes reviewer procedures, and records local runtime constraints. In the current evidence base, the main reported local planning surface includes five open-weight models in `BP001`; the local quality-bar planning follow-on includes nine indexed `BP007B` runs; the local workflow follow-on includes three indexed `BP008` runs; and the mixed-review `BP006` matrix is only partially complete.

## 4. Hosted Results
The hosted matrix covers OpenAI `gpt-4.1`, Google `gemini-2.5-flash`, and Anthropic `claude-sonnet-4-6`. Across this hosted evidence spine, every provider showed within-model uplift in taught conditions relative to baseline. The recurring pattern is not provider ranking but protocol effect: planning and workflow behavior improved when reusable procedure was made explicit, especially when the task demanded stronger state separation, approval discipline, or handoff quality.

The strongest hosted planning signal appears in `BP001`, where weaker baselines leave more room for protocol lift. The strongest hosted workflow signal appears in the `BP002` through `BP004` progression, with the retained `BP003` run01 and transfer run02 sets and the clarified `BP004` comparison slice providing the clearest evidence that harder tasks reduce ceiling effects and force cleaner artifact packaging, approval handling, and reviewer-safe handoff. The transfer variants, especially the `BP003` run02 set, further strengthen the workflow claim by showing the same effect on adjacent workflow tasks rather than only one task phrasing.

Table 1 summarizes the main hosted within-model uplift pattern that anchors the paper's primary empirical claim.

| Provider | Model | BP001 baseline | BP001 taught | BP002 baseline | BP002 taught | BP003 baseline | BP003 taught | Main pattern |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| OpenAI | `gpt-4.1` | `3/10` | `9/10` | `5/10` | `9/10` | `8/10` | `10/10` | large planning uplift and repeated workflow uplift |
| Google | `gemini-2.5-flash` | `3/10` | `7/10` | `8/10` | `9/10` | `8/10` | `10/10` | structural planning uplift and clearer gains on harder workflow tasks |
| Anthropic | `claude-sonnet-4-6` | `1/10` | `8/10` | `8/10` | `9/10` | `8/10` | `10/10` | strongest rescue effect on planning and repeated workflow uplift |

The hosted evidence therefore supports the paper's main empirical claim: reusable protocol artifacts improve within-model outcomes across multiple hosted providers on planning and workflow tasks. A secondary Anthropic `LLM-as-judge` review (`L2A`) re-scored the hosted `BP001` and `BP002` six-run slice and agreed with the original stronger condition in all six cases while changing some score magnitudes modestly. A completed human `L2` memo from Fernanda De La O independently supports the same stronger-condition direction across that same slice. The remaining caution is narrower: the memo's rubric-row semantics are not explicit enough to justify stronger row-level quantitative interpretation in external prose.

## 5. Local and Resilience Results
The local evidence has three interpretable layers. The first is the open-weight `BP001` planning comparison. Across the five-model set, every open-weight model showed some within-model uplift, but the strongest taught score plateaued at `6/10`, which is enough to support a limited low-parameter claim but not enough to justify immediate transfer or workflow expansion from planning alone.

The second layer is `BP007B`, the verifier-backed planning follow-on. This branch is methodologically useful because it solved the review-bar problem: false-positive stretch passes were eliminated once the reviewer had to check against the actual project inventory. The substantive outcome, however, remained weak. Stronger review did not rescue local planning quality. The strongest verifier-backed point, `T07`, still only reached `pass-core`, and the weaker local executors in `T08` and `T09` failed the core bar outright.

The third layer is `BP008`, the workflow-task local follow-on. This is the strongest local result surface in the paper. In `W01`, under hosted review, `llama3.2:3b` improved from `4/10` to `5/10` and reached `pass-core` on a concrete workflow artifact task. In `W03`, under an all-local fallback pair, the same executor improved from `2/10` to `4/10` and again reached `pass-core`. Those retained `W01` and `W03` points matter because they provide the clearest evidence that a local fallback path can preserve part of the workflow gain without claiming hosted-quality parity.

The main local conclusion is therefore more specific than a generic claim that open-weight models improve. Local models improve most credibly when the task family is concrete and artifact-centered. In the current local evidence, `BP007B` remains a negative-but-useful planning follow-on, while `BP008` is the strongest workflow follow-on. Workflow tasks give weaker local models something they can actually repair: file presence, blocker labels, stop-condition logs, and handoff structure. Abstract planning over complex project state remains a much harder local surface.

Table 2 summarizes the local evidence ladder and keeps the resilience claim scoped to the surfaces that actually cleared usable thresholds.

| Surface | Strongest retained result | What it shows | Main limitation |
| --- | --- | --- | --- |
| Open-weight `BP001` | `llama3.1:8b`, `llama3.2:3b`, and `qwen2.5:3b` each reach `6/10` taught | teaching helps weaker local models structurally on planning | absolute planning fidelity remains mixed |
| `BP007B` verifier-backed planning | `T07` `llama3.2:3b` + `gpt-4.1` at `4/10` to `4/10`, `pass-core` | false-positive review can be eliminated on planning | stronger review did not rescue weak local planning quality |
| `BP008` workflow quality-bar | `W01` `llama3.2:3b` + `gpt-4.1` at `4/10` to `5/10`, `pass-core`; `W03` `llama3.2:3b` + `qwen2.5-coder:3b` at `2/10` to `4/10`, `pass-core` | concrete workflow tasks preserve more local-model value and support a real all-local fallback mode | all-local review remains softer and lower quality than hosted review |

## 6. Mixture-of-Experts Results
`BP006` extends the protocol question beyond single-model taught conditions. The key result is that reviewer quality and executor strength interact. Strong executors paired with strong reviewers often benefit most from correction: the original model absorbs critique and produces the stronger final artifact. Weaker executors paired with stronger reviewers often benefit more from takeover: the second model becomes the final author because critique alone does not produce enough repair.

The evidence now includes hosted-hosted, hybrid hosted-local, and fully local mixture-of-experts points. The pattern is useful for both interpretation and deployment. It suggests that multi-model improvement is not a single architecture effect. Whether correction or takeover is superior depends on which model is strong enough to revise effectively and which model is strong enough to judge or rewrite reliably. However, the current `BP006` surface still reflects six retained pairs drawn from a larger planned matrix rather than a completed exhaustive pairing study. This section should therefore be read as a secondary architecture analysis, not yet as a finished exhaustive law over the full planned pairing matrix.

Table 3 captures the retained `BP006` synthesis points used in the current manuscript.

| Pair | Executor | Reviewer | Baseline | Single-model taught | Correction | Takeover | Best condition |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `P1` | `gpt-4.1` | `claude-sonnet-4-6` | `4/10` | `5/10` | `6/10` | `5/10` | correction |
| `P2` | `gemini-2.5-flash` | `gpt-4.1` | `4/10` | `5/10` | `5/10` | `6/10` | takeover |
| `P3` | `gpt-4.1` | `gemini-2.5-flash` | `4/10` | `5/10` | `5/10` | `5/10` | no MoE gain |
| `P4` | `claude-sonnet-4-6` | `gpt-4.1` | `5/10` | `7/10` | `8/10` | `6/10` | correction |
| `P5` | `deepseek-coder-v2:16b-lite-instruct-q3_K_S` | `gpt-4.1` | `2/10` | `3/10` | `5/10` | `6/10` | takeover |
| `P6` | `deepseek-coder-v2:16b-lite-instruct-q3_K_S` | `llama3.2:3b` | `2/10` | `3/10` | `4/10` | `4/10` | modest local-local gain |

## 7. Discussion
The evidence supports a coherent methodological claim: protocol-mediated uplift is strongest when procedure is made explicit, reusable, and auditable. Hosted results show that this effect repeats across multiple providers. Local results show that the effect can persist in weaker settings, but only under certain task families and with lower ceilings.

The most defensible claims are now relatively clear. First, hosted within-model uplift is repeated enough across `BP001` through `BP004` to support a real protocol-mediated effect rather than a one-off prompt artifact. The hosted `BP001` and `BP002` slice is supported by both a completed Anthropic `L2A` review pass and a completed human `L2` memo, each of which preserved the stronger-condition direction across the reviewed six-run slice. Second, `BP006` suggests that multi-model improvement is architecture-dependent: correction, takeover, and no-gain cases all appear, and their distribution depends on executor strength and reviewer quality. Third, the local evidence supports a bounded resilience claim, especially once the benchmark surface shifts from abstract planning to concrete workflow artifacts.

Several stronger claims remain unwarranted. The paper should not claim that local models match hosted-model quality, that all review loops are equally effective, or that the study has already validated durable autonomous learning under publication-grade independent scoring. The evidence still contains operator-side scoring, some proxy-materialized workflow tasks, and local-runtime constraints that narrow the resilience interpretation.

The local evidence nevertheless matters for both scientific and operational reasons. It shows that the protocol methodology can preserve part of its value even when the system is degraded from hosted-primary operation to a fallback local-review mode. That is not a replacement-quality result, but it is a meaningful resilience result.

## 8. Threats to Validity
The strongest threat is no longer evaluator independence on the hosted `BP001` and `BP002` slice, because that slice now has a completed human `L2` memo. Most scoring elsewhere still comes from the program operator. The Anthropic `L2A` review remains a secondary consistency check over the hosted slice rather than a substitute for distinct human review. The residual caution is narrower: the human memo's exact column totals are transcribed in repo-local form, but the rubric-row semantics are not sufficiently explicit in the source table to justify stronger row-by-row interpretation in external prose.

There are additional methodological limits. The taught condition supplies the protocol artifact directly, so the measured effect is partly a protocol-following effect rather than a demonstration of durable internal learning. Run-accounting and replacement logic are exposed in the manuscript supplement, and the journal packet includes explicit branch-accounting and reviewer-procedure material, but the study still reflects a bounded benchmark portfolio rather than a comprehensive field deployment. Some workflow results remain proxy-materialized rather than native live-tool execution. Local runs are also shaped by machine limits, including one-model-at-a-time storage discipline and slower local inference. None of these invalidate the findings, but they do constrain how strongly the results should be generalized.

Table 4 summarizes the main validity limits carried into the current submission.

| Area | Current state | Consequence |
| --- | --- | --- |
| Evaluator independence | evidence remains mostly `L0/L1`; Anthropic `L2A` review and a completed human `L2` memo both agree with the stronger condition on the reviewed hosted `BP001` and `BP002` runs | evaluator independence is now supported on the hosted slice, and the human memo's per-column totals are transcribed locally; remaining caution concerns interpretation of the memo's rubric-row semantics |
| Protocol implementation | taught condition embeds the protocol directly | current results show protocol-following effects, not yet a separate controller effect |
| Workflow realism | some workflow evidence is proxy-materialized rather than native live-tool execution | real-world tool robustness is still only partially tested |
| Local review quality | all-local fallback is weaker than hosted review | local branch supports resilience claims, not replacement-quality claims |
| Local hardware/runtime | one-model-at-a-time machine, slower local inference | local evidence remains narrower and more operationally constrained than hosted evidence |

## 9. Conclusion
This study provides evidence that reusable protocol artifacts can improve within-model performance across multiple hosted providers on planning and workflow benchmarks. The most consistent result is not a provider-specific ranking but a workflow effect: when procedure is externalized into explicit, reusable, and reviewable artifacts, models more reliably satisfy planning constraints, approval discipline, and handoff requirements. The hosted benchmark matrix therefore supports a concrete empirical claim relevant to software engineering: protocolized execution can materially improve artifact-producing agent workflows.

The paper also establishes a narrower secondary result. Under weaker local-model and fallback-review conditions, parts of the protocol effect persist, especially on concrete workflow artifact tasks. That finding should be read as bounded resilience rather than parity with hosted systems. The local evidence does not justify claims of replacement-quality performance, and the study does not demonstrate durable internal learning. It instead shows that some of the value of protocolized execution survives degradation in model and review quality.

Taken together, the results support a disciplined interpretation of protocol-mediated uplift. Reusable procedure appears to be a meaningful control surface for improving agentic workflow reliability, but the strength of that effect depends on the evaluation surface, the review architecture, and the execution environment. For empirical software engineering, the implication is practical as well as methodological: stronger agent performance may come not only from better base models, but from better procedural structure, better review design, and better retention of reusable operational knowledge.

## Data and Materials Availability
The retained benchmark packets, scored artifact chains, synthesis memos, and reviewer materials that support this manuscript are archived in a project repository maintained by the corresponding author. The manuscript-facing supplement identifies the branch-level run universes, reviewer procedures, and retained evidence surfaces used in the paper. Because the archive includes operational materials and review artifacts, it is not presently posted as a public dataset, but editor and reviewer access can be provided on reasonable request.

## References
Gu, Jiawei, Xuhui Jiang, Zhichao Shi, Hexiang Tan, Xuehao Zhai, Chengjin Xu, Wei Li, Yinghan Shen, Shengjie Ma, Honghao Liu, Yuanzhuo Wang, and Jian Guo. 2024. *A Survey on LLM-as-a-Judge*. CoRR abs/2411.15594. https://doi.org/10.48550/arXiv.2411.15594.

Jimenez, Carlos E., John Yang, Alexander Wettig, Shunyu Yao, Kexin Pei, Ofir Press, and Karthik Narasimhan. 2023. *SWE-bench: Can Language Models Resolve Real-World GitHub Issues?* arXiv:2310.06770. https://doi.org/10.48550/arXiv.2310.06770.

Liu, Yang, Dan Iter, Yichong Xu, Shuohang Wang, Ruochen Xu, and Chenguang Zhu. 2023. *G-Eval: NLG Evaluation using Gpt-4 with Better Human Alignment*. In *Proceedings of the 2023 Conference on Empirical Methods in Natural Language Processing*, 2511-2522. https://doi.org/10.18653/v1/2023.emnlp-main.153.

Madaan, Aman, Niket Tandon, Prakhar Gupta, Skyler Hallinan, Luyu Gao, Sarah Wiegreffe, Uri Alon, Nouha Dziri, Shrimai Prabhumoye, Yiming Yang, et al. 2023. *Self-Refine: Iterative Refinement with Self-Feedback*. arXiv:2303.17651. https://doi.org/10.48550/arXiv.2303.17651.

Yao, Shunyu, Jeffrey Zhao, Dian Yu, Nan Du, Izhak Shafran, Karthik Narasimhan, and Yuan Cao. 2023. *ReAct: Synergizing Reasoning and Acting in Language Models*. arXiv:2210.03629. https://doi.org/10.48550/arXiv.2210.03629.

Zhang, Yuntong, Haifeng Ruan, Zhiyu Fan, and Abhik Roychoudhury. 2024. *AutoCodeRover: Autonomous Program Improvement*. arXiv:2404.05427. https://doi.org/10.48550/arXiv.2404.05427.
