# EMSE Cover Letter Draft V1

Date: 2026-04-11  
Target venue: `Empirical Software Engineering`

## Draft

Dear Editors,

Please consider our manuscript, *Protocol-Mediated Uplift in Agentic Workflows: Cross-Provider Evidence and Bounded Local Resilience*, for publication in *Empirical Software Engineering*.

This manuscript presents an empirical study of protocolized execution and review workflows for agentic systems. The central question is whether reusable protocol artifacts can improve agent behavior relative to weaker baseline prompting. The primary evidence surface is a hosted cross-provider matrix spanning OpenAI, Google, and Anthropic models across planning and workflow benchmark families. Across that hosted matrix, taught conditions repeatedly outperform weaker baseline conditions within model. The manuscript also includes a bounded local/open-weight evidence layer, framed explicitly as resilience support rather than parity with hosted systems.

We believe the paper is a strong fit for *Empirical Software Engineering* for three reasons. First, its core contribution is empirical and methodological rather than purely conceptual. Second, it focuses on engineering-relevant workflow concerns such as planning quality, artifact retention, approval handling, validation structure, and reviewer-mediated correction. Third, it is organized around reproducible benchmark definitions, explicit scoring rubrics, retained artifact chains, manuscript-facing supplement material, and explicit reporting transparency.

The manuscript is careful about its current evidence posture. We treat hosted results as the primary empirical spine and local results as bounded resilience evidence. We also distinguish model-based secondary review from human evaluator independence. A completed Anthropic `LLM-as-judge` review and a completed distinct human `L2` memo both support the hosted directional pattern on the `BP001` and `BP002` slice. The remaining caution is limited to conservative interpretation of the human memo's rubric rows rather than to uncertainty about the stronger-condition direction itself.

This manuscript is not under consideration elsewhere. We believe it will be of interest to readers concerned with the empirical evaluation, engineering design, and operational governance of agentic software systems.

Sincerely,  
Quantyra Teaching research team

## Revision note

This draft is aligned to the current post-hosted-human-`L2` packet. The remaining blockers are formal submission controls rather than missing empirical evidence.
