# Design

## Overview

This lab defines a small GitHub Actions security baseline suitable for early repository hardening.

The design favors transparent checks over opaque automation. It uses shell-based validation and simple workflow controls so reviewers can understand exactly what is being checked.

## Components

| Component | Purpose |
| --- | --- |
| `ci.yml` | Runs repository structure and boundary validation. |
| `security-scan.yml` | Performs lightweight secret-pattern checks and records dependency-scan placeholder status. |
| `compliance-evidence.yml` | Generates a markdown evidence summary artifact. |
| `scripts/validate-lab.sh` | Checks repository and lab structure. |
| `scripts/check-boundaries.sh` | Checks that labs contain boundary documentation. |
| `scripts/generate-evidence.sh` | Generates reviewable repository evidence. |

## Design Decisions

1. Use explicit workflow `permissions` blocks.
2. Avoid deployment credentials.
3. Avoid production environments.
4. Use shell scripts that can run locally or in CI.
5. Produce markdown evidence that can be reviewed in pull requests.

## Extension Points

This baseline can later be extended with:

- Dependency review
- CodeQL
- SBOM generation
- Artifact signing
- Container image scanning
- Policy-as-code validation
- Pull request evidence summaries
