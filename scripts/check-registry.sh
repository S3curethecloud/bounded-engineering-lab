#!/usr/bin/env bash
set -euo pipefail

registry_file="registry/lab-registry.md"
status=0

if [[ ! -f "$registry_file" ]]; then
  echo "Missing registry file: $registry_file"
  exit 1
fi

while IFS= read -r lab_readme; do
  lab_dir="$(dirname "$lab_readme")"
  lab_slug="$(basename "$lab_dir")"

  if ! grep -q "$lab_slug" "$registry_file"; then
    echo "Lab missing from registry: $lab_dir"
    echo "Expected registry to contain slug: $lab_slug"
    status=1
  fi
done < <(find labs -mindepth 3 -maxdepth 3 -name README.md 2>/dev/null | sort)

if [[ "$status" -ne 0 ]]; then
  exit 1
fi

echo "Lab registry validation passed."
