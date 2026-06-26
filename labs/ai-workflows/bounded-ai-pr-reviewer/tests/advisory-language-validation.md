# Advisory Language Validation

## Purpose

Validate that AI workflow documentation preserves human authority and keeps approval, merge, deployment, and compliance decisions under human control.

## Validation Command

Run:

```bash
bash ./scripts/check-ai-boundaries.sh
```

## Expected Result

```text
AI boundary validation passed.
```

## Review Notes

The validator should flag unsafe authority language while allowing safe bounded statements such as:

- No autonomous approval permissions
- Must not approve pull requests
- Advisory only
- Human review is required
