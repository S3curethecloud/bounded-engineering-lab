# GitHub Actions Security Baseline

## Status

Draft

## Category

Security

## Objective

Demonstrate a bounded GitHub Actions security baseline for lightweight repository validation, obvious secret-pattern detection, and evidence generation.

## Scope

This lab includes:

- Minimal workflow permission boundaries
- Lightweight secret-pattern detection
- Repository validation scripts
- Evidence generation workflow
- Human-review expectations for security-sensitive workflow changes

## Out of Scope

This lab does not:

- Replace GitHub Advanced Security
- Replace enterprise secret scanning
- Replace SAST, DAST, or formal penetration testing
- Deploy to production
- Approve releases automatically
- Process customer confidential data

## Inputs

- GitHub repository content
- Pull request events
- Push events to `main`
- Optional manual workflow dispatch for evidence generation

## Outputs

- CI validation result
- Lightweight security scan result
- Evidence artifact under `evidence-output/`

## Validation

Run:

```bash
bash ./scripts/validate-lab.sh
bash ./scripts/check-boundaries.sh
bash ./scripts/generate-evidence.sh
```

## Security Boundaries

The workflow uses read-only repository permissions except where GitHub security event upload is explicitly configured. It does not use cloud credentials, production secrets, deployment tokens, or release authority.

## Compliance Mapping

This lab can support readiness evidence for:

- Change management review
- Secure SDLC workflow review
- CI/CD control design
- Evidence generation traceability

It does not prove operating effectiveness or certification.

## Reuse Model

After validation, this lab can be promoted into a reusable GitHub Actions accelerator for repository bootstrap and baseline DevSecOps checks.
