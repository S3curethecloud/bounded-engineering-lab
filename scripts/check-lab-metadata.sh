#!/usr/bin/env bash
set -euo pipefail

status=0

required_keys=(
  "id:"
  "name:"
  "category:"
  "status:"
  "owner:"
  "validation:"
  "evidence:"
  "accelerator_path:"
  "authority_boundary:"
)

while IFS= read -r lab_readme; do
  lab_dir="$(dirname "$lab_readme")"
  metadata_file="$lab_dir/lab.yaml"

  if [[ ! -f "$metadata_file" ]]; then
    echo "Missing lab metadata: $metadata_file"
    status=1
    continue
  fi

  for key in "${required_keys[@]}"; do
    if ! grep -q "^$key" "$metadata_file"; then
      echo "Missing required metadata key '$key' in $metadata_file"
      status=1
    fi
  done
done < <(find labs -mindepth 3 -maxdepth 3 -name README.md 2>/dev/null | sort)

if [[ "$status" -ne 0 ]]; then
  exit 1
fi

echo "Lab metadata validation passed."
