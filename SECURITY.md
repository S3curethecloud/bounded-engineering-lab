# Security Policy

## Security Boundary

This repository contains lab patterns, prototypes, templates, and accelerators. Unless a lab explicitly states otherwise, artifacts in this repository are not production systems and must not be treated as production-authoritative controls.

## Supported Use

This repository may be used for:

- Local experimentation
- CI/CD pattern validation
- Security workflow design
- Compliance evidence modeling
- Deployment-pattern review
- AI-assisted workflow prototyping with human review

## Prohibited Use

Do not use this repository to:

- Store production secrets
- Store customer confidential data
- Run unreviewed production deployments
- Grant AI workflows autonomous approval authority
- Bypass branch protection, security review, or compliance review
- Replace formal security assessment or audit procedures

## Reporting a Security Issue

For vulnerabilities or accidental exposure of sensitive material, open a private security advisory if available. If private advisories are unavailable, contact the repository owner directly and do not disclose exploit details in a public issue.

## Secret Handling

Never commit:

- API keys
- Cloud credentials
- SSH private keys
- Signing keys
- Personal access tokens
- Database credentials
- Environment files containing secrets

Use GitHub Actions secrets, cloud secret managers, or local-only ignored files for sensitive configuration.

## AI Workflow Security

AI-enabled workflows in this repository must remain bounded:

- AI output must be treated as advisory.
- Human review is required before merge, release, deployment, or compliance assertion.
- AI must not approve pull requests autonomously.
- AI must not mutate production systems.
- AI must not create, rotate, or expose credentials.

## Dependency and Workflow Security

Workflows should prefer:

- Minimal permissions
- Pinned third-party actions where practical
- Explicit `permissions` blocks
- Reviewable workflow changes
- Dependency scanning
- Secret scanning
- SBOM generation where relevant
