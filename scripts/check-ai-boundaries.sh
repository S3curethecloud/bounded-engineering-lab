#!/usr/bin/env bash
set -euo pipefail

status=0

if [[ ! -d "labs/ai-workflows" ]]; then
  echo "No AI workflow labs found."
  exit 0
fi

while IFS= read -r file; do
  while IFS= read -r match; do
    line_number="${match%%:*}"
    line_text="${match#*:}"

    # Safe bounded/negative statements should not fail the check.
    if echo "$line_text" | grep -Eiq '^\s*(-\s*)?(no|not|must not|does not|do not|without|advisory only|non-authoritative)'; then
      continue
    fi

    # Safe explanatory statements such as "does not imply autonomous approval"
    # should not fail when they explicitly preserve human authority.
    if echo "$line_text" | grep -Eiq '\b(does not imply|does not grant|does not provide|must not|advisory only|human review is required)\b'; then
      continue
    fi

    echo "${file}:${line_number}:${line_text}"
    echo "Potential AI authority boundary violation detected in: $file"
    status=1
  done < <(
    grep -nEi '\b(auto-approve|autonomous approval|auto-merge|autonomous merge|auto-deploy|autonomous deployment|certifies compliance|proves compliance|production-authoritative)\b' "$file" || true
  )
done < <(find labs/ai-workflows -type f -name "*.md" | sort)

if [[ "$status" -ne 0 ]]; then
  exit 1
fi

echo "AI boundary validation passed."
