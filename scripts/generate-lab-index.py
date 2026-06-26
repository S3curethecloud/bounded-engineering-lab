#!/usr/bin/env python3
from pathlib import Path
import json

ROOT = Path(".")
OUT = ROOT / "registry" / "generated" / "lab-index.jsonl"
OUT.parent.mkdir(parents=True, exist_ok=True)

def parse_simple_yaml(path: Path) -> dict:
    data = {}
    current_key = None

    for raw in path.read_text().splitlines():
        line = raw.rstrip()

        if not line or line.strip().startswith("#"):
            continue

        if line.startswith("  - ") and current_key:
            data.setdefault(current_key, [])
            data[current_key].append(line.strip()[2:].strip())
            continue

        if ":" in line and not line.startswith(" "):
            key, value = line.split(":", 1)
            key = key.strip()
            value = value.strip()
            current_key = key

            if value:
                data[key] = value
            else:
                data[key] = []

    return data

records = []

for metadata_file in sorted((ROOT / "labs").glob("*/*/lab.yaml")):
    lab_dir = metadata_file.parent
    data = parse_simple_yaml(metadata_file)
    data["lab_path"] = str(lab_dir)
    records.append(data)

with OUT.open("w") as f:
    for record in records:
        f.write(json.dumps(record, sort_keys=True) + "\n")

print(f"Generated {OUT} with {len(records)} lab record(s).")
