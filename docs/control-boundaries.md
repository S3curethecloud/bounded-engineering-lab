# Control Boundaries

## Purpose

This document defines the default control boundaries for all labs and accelerators in this repository.

## Default Boundary

Unless explicitly documented and approved, repository artifacts are non-production, non-authoritative, and human-reviewed.

## Authority Boundaries

| Area | Default Boundary |
| --- | --- |
| Source control | Labs may propose patterns but do not bypass repository protection. |
| CI/CD | Workflows may validate and package but do not deploy production by default. |
| Security | Controls may detect, report, and block lab workflows; they do not replace formal security programs. |
| Compliance | Evidence may support readiness and traceability; it does not certify compliance. |
| Deployment | Deployment patterns are reference implementations unless explicitly promoted. |
| AI workflows | AI output is advisory and non-authoritative. |

## Prohibited Defaults

Labs must not default to:

- Production deployment
- Production credential use
- Secret generation or rotation
- Autonomous release approval
- Autonomous compliance approval
- Autonomous security exception approval
- Production infrastructure mutation
- Customer data processing

## Required Boundary Statement

Each lab must include a `boundaries.md` file that answers:

1. What actions are allowed?
2. What actions are explicitly prohibited?
3. What permissions are required?
4. What data is handled?
5. What environments are affected?
6. What human review is required?
