# Advisory Language Validation

## Purpose

Validate that AI workflow documentation preserves human authority and does not imply autonomous approval, merge, deployment, or compliance certification.

## Validation Command

Run:

```bash
bash ./scripts/check-ai-boundaries.sh
Expected Result
AI boundary validation passed.
Review Notes

The validator should flag unsafe authority language while allowing safe bounded statements such as:

No autonomous approval permissions
Must not approve pull requests
Advisory only
Human review is required
