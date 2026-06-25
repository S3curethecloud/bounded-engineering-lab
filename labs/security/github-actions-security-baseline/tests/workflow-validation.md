# Workflow Validation

## Validation Commands

Run from the repository root:

```bash
bash ./scripts/validate-lab.sh
bash ./scripts/check-boundaries.sh
bash ./scripts/generate-evidence.sh
```

## Expected Result

- Repository structure validation passes.
- Boundary validation passes.
- Evidence summary is generated under `evidence-output/`.

## Failure Conditions

Validation should fail if:

- Required repository files are missing.
- A complete lab folder is missing required files.
- A lab lacks boundary documentation.
- Evidence cannot be generated.
