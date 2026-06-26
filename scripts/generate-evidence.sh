#!/usr/bin/env bash
set -euo pipefail

output_dir="evidence-output"
mkdir -p "$output_dir"

summary_file="$output_dir/repository-evidence-summary.md"

{
  echo "# Repository Evidence Summary"
  echo
  echo "Generated: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
  echo
  echo "## Repository Checks"
  echo
  echo "- README present: $([[ -f README.md ]] && echo yes || echo no)"
  echo "- Security policy present: $([[ -f SECURITY.md ]] && echo yes || echo no)"
  echo "- CODEOWNERS present: $([[ -f CODEOWNERS ]] && echo yes || echo no)"
  echo "- Control boundaries present: $([[ -f docs/control-boundaries.md ]] && echo yes || echo no)"
  echo "- Evidence model present: $([[ -f docs/evidence-model.md ]] && echo yes || echo no)"
  echo
  echo "## Lab Inventory"
  echo
  labs_found=0
  while IFS= read -r lab_readme; do
    labs_found=1
    echo "- $(dirname "$lab_readme")"
  done < <(find labs -mindepth 3 -maxdepth 3 -name README.md 2>/dev/null | sort)
  if [[ "$labs_found" -eq 0 ]]; then
    echo "- No complete lab folders detected yet."
  fi
  echo
  echo "## Evidence Boundary"
  echo
  echo "This generated summary is repository-readiness evidence only. It does not certify production security, compliance, or operational effectiveness."
} > "$summary_file"

echo "Evidence summary generated at $summary_file"
