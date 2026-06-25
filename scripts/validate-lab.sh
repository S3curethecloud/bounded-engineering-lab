#!/usr/bin/env bash
set -euo pipefail

required_files=(
  "README.md"
  "LICENSE"
  "CONTRIBUTING.md"
  "SECURITY.md"
  "CODEOWNERS"
  "docs/lab-charter.md"
  "docs/engineering-standards.md"
  "docs/control-boundaries.md"
  "docs/validation-model.md"
  "docs/evidence-model.md"
)

missing=0
for file in "${required_files[@]}"; do
  if [[ ! -f "$file" ]]; then
    echo "Missing required file: $file"
    missing=1
  fi
done

if [[ "$missing" -ne 0 ]]; then
  exit 1
fi

while IFS= read -r lab_readme; do
  lab_dir="$(dirname "$lab_readme")"
  for required in design.md boundaries.md risks.md next-steps.md; do
    if [[ ! -f "$lab_dir/$required" ]]; then
      echo "Lab missing required file: $lab_dir/$required"
      missing=1
    fi
  done
done < <(find labs -mindepth 3 -maxdepth 3 -name README.md 2>/dev/null | sort)

if [[ "$missing" -ne 0 ]]; then
  exit 1
fi

echo "Repository structure validation passed."
