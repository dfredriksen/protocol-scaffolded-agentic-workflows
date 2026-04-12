import argparse
import json
import os
import random
import re
import sys
import urllib.request
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
MODEL_INVENTORY_ENV = ROOT.parent / "Model-Inventory" / ".env"
OUTPUT_DIR = ROOT / "docs" / "benchmarks" / "reviews" / "l2a-hosted-matrix"
RUBRIC_PATH = ROOT / "docs" / "benchmarks" / "scoring-rubric-v1.md"
RUNS = [
    "docs/benchmarks/pilots/BP001/runs/2026-03-13-openai-run01",
    "docs/benchmarks/pilots/BP001/runs/2026-03-13-google-run01",
    "docs/benchmarks/pilots/BP001/runs/2026-03-13-anthropic-run01",
    "docs/benchmarks/pilots/BP002/runs/2026-03-13-openai-run01",
    "docs/benchmarks/pilots/BP002/runs/2026-03-13-google-run01",
    "docs/benchmarks/pilots/BP002/runs/2026-03-13-anthropic-run01",
]


def load_env_file(path: Path) -> None:
    if not path.exists():
        return
    for raw_line in path.read_text(encoding="utf-8").splitlines():
        line = raw_line.strip()
        if not line or line.startswith("#") or "=" not in line:
            continue
        key, value = line.split("=", 1)
        key = key.strip()
        value = value.strip().strip('"').strip("'")
        os.environ.setdefault(key, value)


def anthropic_request(model: str, prompt: str, max_tokens: int) -> str:
    api_key = os.environ.get("ANTHROPIC_API_KEY")
    if not api_key:
        raise RuntimeError("ANTHROPIC_API_KEY not found in environment or ../Model-Inventory/.env")

    payload = {
        "model": model,
        "max_tokens": max_tokens,
        "temperature": 0,
        "messages": [{"role": "user", "content": prompt}],
    }
    data = json.dumps(payload).encode("utf-8")
    req = urllib.request.Request(
        "https://api.anthropic.com/v1/messages",
        data=data,
        headers={
            "x-api-key": api_key,
            "anthropic-version": "2023-06-01",
            "content-type": "application/json",
        },
        method="POST",
    )
    with urllib.request.urlopen(req, timeout=180) as resp:
        body = json.loads(resp.read().decode("utf-8"))
    parts = body.get("content", [])
    text_parts = [part.get("text", "") for part in parts if part.get("type") == "text"]
    return "\n".join(text_parts).strip()


def parse_json_block(text: str) -> dict:
    fenced = re.search(r"```(?:json)?\s*(\{.*?\})\s*```", text, re.DOTALL)
    if fenced:
        return json.loads(fenced.group(1))

    first = text.find("{")
    last = text.rfind("}")
    if first == -1 or last == -1 or last <= first:
        raise ValueError("No JSON object found in model response")
    return json.loads(text[first : last + 1])


def parse_original_summary(path: Path) -> dict:
    text = path.read_text(encoding="utf-8")
    stronger = "tie"
    if "Taught-protocol condition" in text:
        stronger = "taught"
    elif "Baseline" in text:
        stronger = "baseline"
    baseline = re.search(r"## Baseline total\s*-\s*`(\d+)/10`", text, re.MULTILINE)
    taught = re.search(r"## Taught total\s*-\s*`(\d+)/10`", text, re.MULTILINE)
    return {
        "stronger_condition": stronger,
        "baseline_total": int(baseline.group(1)) if baseline else None,
        "taught_total": int(taught.group(1)) if taught else None,
    }


def collect_artifacts(run_dir: Path) -> tuple[list[tuple[str, str]], list[tuple[str, str]], list[tuple[str, str]]]:
    baseline = []
    taught = []
    shared = []
    for path in sorted(run_dir.iterdir()):
        if not path.is_file():
            continue
        if path.name in {"score-summary.md", "evaluator-worksheet.md"}:
            continue
        content = path.read_text(encoding="utf-8")
        if path.name.startswith("baseline-"):
            baseline.append((path.name, content))
        elif path.name.startswith("taught-"):
            taught.append((path.name, content))
        else:
            shared.append((path.name, content))
    return baseline, taught, shared


def format_artifacts(items: list[tuple[str, str]]) -> str:
    chunks = []
    for name, content in items:
        chunks.append(f"FILE: {name}\n---\n{content.strip()}\n")
    return "\n".join(chunks)


def build_prompt(run_name: str, rubric: str, condition_x: list[tuple[str, str]], condition_y: list[tuple[str, str]], shared: list[tuple[str, str]]) -> str:
    return f"""You are an LLM-as-judge reviewer for a software-engineering benchmark.

Important rules:
- Score only from the provided artifacts.
- Do not assume hidden assistance.
- Evaluate Condition X and Condition Y independently before deciding which is stronger.
- Use the rubric exactly as written.
- If evidence is ambiguous, say so in uncertainty_notes instead of filling gaps.
- Return JSON only, with no prose before or after it.

Run: {run_name}
Independence level label: L2A hosted model review

Scoring rubric:
{rubric}

Shared run context:
{format_artifacts(shared) if shared else "None"}

Condition X artifacts:
{format_artifacts(condition_x)}

Condition Y artifacts:
{format_artifacts(condition_y)}

Return this JSON shape exactly:
{{
  "condition_x": {{
    "task_completion": 0,
    "validation_quality": 0,
    "protocol_adherence": 0,
    "rework_burden": 0,
    "transfer_readiness": 0,
    "total": 0
  }},
  "condition_y": {{
    "task_completion": 0,
    "validation_quality": 0,
    "protocol_adherence": 0,
    "rework_burden": 0,
    "transfer_readiness": 0,
    "total": 0
  }},
  "stronger_condition": "X",
  "difference_magnitude": "small",
  "main_behaviors": ["", ""],
  "uncertainty_notes": ["", ""]
}}
"""


def worksheet_markdown(run_name: str, result: dict, original: dict, x_label: str, y_label: str) -> str:
    stronger = result["stronger_condition"]
    mapped = {"X": x_label, "Y": y_label, "tie": "tie"}
    return f"""# {run_name} L2A Review Worksheet

## Review metadata
- Review date: 2026-03-15
- Reviewer: Anthropic model
- Reviewer model: claude-sonnet-4-6
- Reviewer type: LLM-as-judge
- Independence level: L2A hosted model review

## Condition labels
- Condition X path: {x_label}
- Condition Y path: {y_label}

## Re-scoring
### Condition X
- Task completion: {result["condition_x"]["task_completion"]}
- Validation quality: {result["condition_x"]["validation_quality"]}
- Protocol adherence: {result["condition_x"]["protocol_adherence"]}
- Rework burden: {result["condition_x"]["rework_burden"]}
- Transfer readiness: {result["condition_x"]["transfer_readiness"]}
- Total: {result["condition_x"]["total"]}

### Condition Y
- Task completion: {result["condition_y"]["task_completion"]}
- Validation quality: {result["condition_y"]["validation_quality"]}
- Protocol adherence: {result["condition_y"]["protocol_adherence"]}
- Rework burden: {result["condition_y"]["rework_burden"]}
- Transfer readiness: {result["condition_y"]["transfer_readiness"]}
- Total: {result["condition_y"]["total"]}

## Comparative assessment
- Stronger condition: {stronger}
- Mapped stronger condition: {mapped.get(stronger, "tie")}
- Difference magnitude: {result["difference_magnitude"]}
- Original stronger condition: {original["stronger_condition"]}
- Original baseline total: {original["baseline_total"]}
- Original taught total: {original["taught_total"]}

## Notes
### Main behaviors
{os.linesep.join(f"- {item}" for item in result["main_behaviors"])}

### Uncertainty notes
{os.linesep.join(f"- {item}" for item in result["uncertainty_notes"])}
"""


def memo_markdown(run_name: str, result: dict, original: dict, x_label: str, y_label: str) -> str:
    stronger_map = {"X": x_label, "Y": y_label, "tie": "tie"}
    judged = stronger_map.get(result["stronger_condition"], "tie")
    agreement = "agree" if judged == original["stronger_condition"] else "disagree"
    mapped_totals = {
        x_label: result["condition_x"]["total"],
        y_label: result["condition_y"]["total"],
    }
    return f"""# {run_name} L2A Review Memo

## Reviewer metadata
- Reviewer type: LLM-as-judge
- Reviewer model: claude-sonnet-4-6
- Independence level: L2A hosted model review

## Outcome
- Original stronger condition: {original["stronger_condition"]}
- L2A stronger condition: {judged}
- Agreement status: {agreement}
- Original baseline total: {original["baseline_total"]}
- Original taught total: {original["taught_total"]}
- L2A baseline total: {mapped_totals.get("baseline")}
- L2A taught total: {mapped_totals.get("taught")}

## Main behaviors
{os.linesep.join(f"- {item}" for item in result["main_behaviors"])}

## Uncertainty notes
{os.linesep.join(f"- {item}" for item in result["uncertainty_notes"])}

## Reporting note
This memo is model-based secondary review. It should not be described as human `L2`.
"""


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--model", default="claude-sonnet-4-6")
    parser.add_argument("--limit", type=int, default=0)
    parser.add_argument("--max-tokens", type=int, default=1200)
    args = parser.parse_args()

    load_env_file(MODEL_INVENTORY_ENV)
    rubric = RUBRIC_PATH.read_text(encoding="utf-8")
    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

    run_paths = [ROOT / run for run in RUNS]
    if args.limit:
        run_paths = run_paths[: args.limit]

    summary_rows = []
    rng = random.Random(42)

    for run_dir in run_paths:
        run_name = run_dir.name
        benchmark_family = run_dir.parents[1].name
        run_key = f"{benchmark_family}-{run_name}"
        baseline, taught, shared = collect_artifacts(run_dir)
        order = [("baseline", baseline), ("taught", taught)]
        rng.shuffle(order)
        x_label, x_artifacts = order[0]
        y_label, y_artifacts = order[1]
        prompt = build_prompt(run_key, rubric, x_artifacts, y_artifacts, shared)
        raw = anthropic_request(args.model, prompt, args.max_tokens)
        run_out = OUTPUT_DIR / run_key
        run_out.mkdir(parents=True, exist_ok=True)
        (run_out / "raw-response.txt").write_text(raw, encoding="utf-8")
        result = parse_json_block(raw)
        original = parse_original_summary(run_dir / "score-summary.md")

        (run_out / "condition-label-map.json").write_text(
            json.dumps({"X": x_label, "Y": y_label}, indent=2), encoding="utf-8"
        )
        (run_out / "l2a-review.json").write_text(json.dumps(result, indent=2), encoding="utf-8")
        (run_out / "l2a-review-worksheet.md").write_text(
            worksheet_markdown(run_key, result, original, x_label, y_label), encoding="utf-8"
        )
        (run_out / "l2a-review-memo.md").write_text(
            memo_markdown(run_key, result, original, x_label, y_label), encoding="utf-8"
        )

        mapped = {"X": x_label, "Y": y_label, "tie": "tie"}
        judged = mapped.get(result["stronger_condition"], "tie")
        agreement = "agree" if judged == original["stronger_condition"] else "disagree"
        summary_rows.append(
            {
                "run": run_name,
                "run_key": run_key,
                "original_stronger": original["stronger_condition"],
                "l2a_stronger": judged,
                "original_score": f'baseline {original["baseline_total"]}, taught {original["taught_total"]}',
                "l2a_score": (
                    f'baseline {result["condition_x"]["total"] if x_label == "baseline" else result["condition_y"]["total"]}, '
                    f'taught {result["condition_x"]["total"] if x_label == "taught" else result["condition_y"]["total"]}'
                ),
                "agreement": agreement,
            }
        )

    lines = [
        "# L2A Hosted Review Summary",
        "",
        "## Reviewer metadata",
        f"- reviewer: Anthropic model",
        f"- reviewer model: {args.model}",
        "- reviewer type: LLM-as-judge",
        "- independence level: L2A hosted model review",
        "- review date: 2026-03-15",
        "",
        "## Run-by-run summary",
        "",
        "| Run | Original stronger condition | L2A stronger condition | Original score | L2A score | Agreement status |",
        "| --- | --- | --- | --- | --- | --- |",
    ]
    for row in summary_rows:
        lines.append(
            f'| {row["run_key"]} | {row["original_stronger"]} | {row["l2a_stronger"]} | {row["original_score"]} | {row["l2a_score"]} | {row["agreement"]} |'
        )
    lines.extend(
        [
            "",
            "## Reporting note",
            "These results are model-based secondary review and should not be described as human `L2`.",
        ]
    )
    (OUTPUT_DIR / "l2a-hosted-summary-v1.md").write_text("\n".join(lines), encoding="utf-8")
    print(f"Wrote L2A review outputs to {OUTPUT_DIR}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
