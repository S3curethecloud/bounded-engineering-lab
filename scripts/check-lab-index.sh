#!/usr/bin/env bash
set -euo pipefail

index_file="registry/generated/lab-index.jsonl"

if [[ ! -f "scripts/generate-lab-index.py" ]]; then
  echo "Missing generator: scripts/generate-lab-index.py"
  exit 1
fi

if [[ ! -f "$index_file" ]]; then
  echo "Missing generated index: $index_file"
  exit 1
fi

before="$(mktemp)"
after="$(mktemp)"

cp "$index_file" "$before"

python3 scripts/generate-lab-index.py >/tmp/lab-index-generation.log

cp "$index_file" "$after"

if ! diff -u "$before" "$after"; then
  echo "Generated lab index is stale. Run:"
  echo "python3 scripts/generate-lab-index.py"
  exit 1
fi

echo "Generated lab index validation passed."
