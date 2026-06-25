#!/usr/bin/env bash
set -euo pipefail

status=0

while IFS= read -r lab_readme; do
  lab_dir="$(dirname "$lab_readme")"
  boundary_file="$lab_dir/boundaries.md"

  if [[ ! -f "$boundary_file" ]]; then
    echo "Missing boundary file: $boundary_file"
    status=1
    continue
  fi

  if ! grep -Eiq "allowed|prohibited|out of scope|permissions|human review" "$boundary_file"; then
    echo "Boundary file may be incomplete: $boundary_file"
    status=1
  fi
done < <(find labs -mindepth 3 -maxdepth 3 -name README.md 2>/dev/null | sort)

if [[ "$status" -ne 0 ]]; then
  exit 1
fi

echo "Boundary validation passed."
