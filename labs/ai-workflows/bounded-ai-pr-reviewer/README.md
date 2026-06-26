# Bounded AI PR Reviewer

## Status

Draft

## Category

AI Workflow

## Objective

Design a bounded AI-assisted pull request review workflow that summarizes code changes, identifies possible risks, and generates review evidence without approving, blocking, merging, or deploying code autonomously.

## Scope

This lab includes:

- AI-assisted pull request summarization
- Risk and control-point identification
- Human-review handoff
- Evidence generation
- Explicit non-authoritative AI boundaries

## Out of Scope

This lab does not:

- Approve pull requests
- Merge code
- Deploy software
- Modify production systems
- Override CODEOWNERS
- Replace human security review
- Replace compliance review

## Inputs

- Pull request diff
- Repository policy files
- Optional control boundary documents
- Human reviewer context

## Outputs

- Pull request summary
- Risk notes
- Suggested reviewer checklist
- Evidence summary

## Validation

Run:

```bash
bash ./scripts/validate-lab.sh
bash ./scripts/check-boundaries.sh
bash ./scripts/generate-evidence.sh
Security Boundaries

AI output is advisory only. Human review is required before merge, release, deployment, or compliance assertion.

Compliance Mapping

This lab may support evidence for:

Change review
Secure SDLC review
AI governance boundary review
Pull request traceability

It does not prove compliance certification or production operating effectiveness.

Reuse Model

If validated, this lab can become a reusable accelerator for bounded AI-assisted pull request review workflows.
