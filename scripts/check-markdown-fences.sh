#!/usr/bin/env bash
set -euo pipefail

status=0

while IFS= read -r file; do
  fence_count="$(grep -c '^```' "$file" || true)"

  if (( fence_count % 2 != 0 )); then
    echo "Unbalanced markdown code fence detected: $file"
    status=1
  fi
done < <(find . -type f -name "*.md" \
  -not -path "./.git/*" \
  -not -path "./evidence-output/*" | sort)

if [[ "$status" -ne 0 ]]; then
  exit 1
fi

echo "Markdown fence validation passed."
