import json
import os
import sys
import urllib.error
import urllib.request
from pathlib import Path


def load_env(env_path: Path) -> None:
    if not env_path.exists():
        return
    for line in env_path.read_text(encoding="utf-8").splitlines():
        line = line.strip()
        if not line or line.startswith("#") or "=" not in line:
            continue
        key, value = line.split("=", 1)
        os.environ.setdefault(key.strip(), value.strip())


def call_model(api_base: str, api_key: str, model: str, prompt: str) -> tuple[bool, str]:
    payload = {
        "model": model,
        "messages": [{"role": "user", "content": prompt}],
    }
    req = urllib.request.Request(
        f"{api_base}/chat/completions",
        data=json.dumps(payload).encode("utf-8"),
        headers={
            "Authorization": f"Bearer {api_key}",
            "Content-Type": "application/json",
        },
        method="POST",
    )
    try:
        with urllib.request.urlopen(req, timeout=120) as resp:
            data = json.loads(resp.read().decode("utf-8"))
        content = data["choices"][0]["message"]["content"]
        return True, str(content).strip()
    except urllib.error.HTTPError as e:
        body = ""
        try:
            body = e.read().decode("utf-8", errors="replace").strip()
        except Exception:
            body = ""
        detail = f"HTTP {e.code} {e.reason}"
        if body:
            detail += f" | {body}"
        return False, detail
    except Exception as e:
        return False, str(e)


def main() -> int:
    inventory_dir = Path(__file__).resolve().parents[2] / "Model-Inventory"
    load_env(inventory_dir / ".env")

    api_key = os.getenv("XAI_API_KEY", "").strip()
    if not api_key:
        print("Missing XAI_API_KEY in Model-Inventory/.env or environment.", file=sys.stderr)
        return 1

    api_base = os.getenv("XAI_API_BASE", "https://api.x.ai/v1").strip().rstrip("/")
    default_model = os.getenv("XAI_MODEL", "grok-4").strip()
    prompt = "Reply with exactly: xai_ok"
    models = sys.argv[1:] or [
        default_model,
        "grok-4-1-fast-reasoning",
        "grok-4-1-fast-non-reasoning",
        "grok-code-fast-1",
    ]

    print(f"api_base={api_base}")
    print(f"default_model={default_model}")
    print("validation_prompt=Reply with exactly: xai_ok")
    print()

    for model in models:
        ok, detail = call_model(api_base, api_key, model, prompt)
        status = "ok" if ok else "error"
        print(f"{model}: {status}")
        print(detail)
        print()

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
