#!/usr/bin/env bash
set -euo pipefail

status=0

if [[ ! -d "labs/ai-workflows" ]]; then
  echo "No AI workflow labs found."
  exit 0
fi

while IFS= read -r file; do
  if grep -RInE '\b(auto-approve|autonomous approval|auto-merge|autonomous merge|auto-deploy|autonomous deployment|certifies compliance|proves compliance|production-authoritative)\b' "$file"; then
    echo "Potential AI authority boundary violation detected in: $file"
    status=1
  fi
done < <(find labs/ai-workflows -type f -name "*.md" | sort)

if [[ "$status" -ne 0 ]]; then
  exit 1
fi

echo "AI boundary validation passed."
