# Bounded Engineering Lab Demo Playbook

## Demo Objective

Show how this repository turns engineering ideas into bounded, validated, evidence-backed labs and reusable accelerators.

## Demo Positioning

This repository demonstrates an engineering-grade operating model for:

- Source control governance
- CI/CD validation
- Security boundary enforcement
- Compliance evidence generation
- AI workflow authority control
- Lab metadata indexing
- Reusable accelerator promotion

## Demo Flow

### 1. Start With the Repository Purpose

Open `README.md` and explain:

- Every lab must be bounded.
- Every lab must define what it does and does not do.
- Every lab must include validation, evidence, risk notes, and promotion path.

### 2. Show the Local Operator Command

Run:

```bash
make all

Expected output:

Repository structure validation passed.
Boundary validation passed.
Markdown fence validation passed.
AI boundary validation passed.
Lab registry validation passed.
Lab metadata validation passed.
Generated lab index validation passed.
Evidence summary generated.
3. Explain the Quality Gates
Gate	Purpose
validate-lab.sh	Confirms required repository and lab files exist.
check-boundaries.sh	Confirms labs document authority boundaries.
check-markdown-fences.sh	Prevents broken markdown/code fences.
check-ai-boundaries.sh	Prevents AI workflow authority drift.
check-registry.sh	Ensures labs are listed in the lab registry.
check-lab-metadata.sh	Ensures labs have required machine-readable metadata.
check-lab-index.sh	Ensures generated lab index is fresh.
generate-evidence.sh	Produces reviewable evidence summary.
4. Show the Lab Registry

Open:

registry/lab-registry.md

Explain that this is the human-readable system of record for lab status, category, validation, evidence, and accelerator path.

5. Show Machine-Readable Metadata

Open:

labs/ai-workflows/bounded-ai-pr-reviewer/lab.yaml
labs/security/github-actions-security-baseline/lab.yaml

Explain that this metadata supports future dashboards, AI indexing, evidence automation, and lab maturity scoring.

6. Show the Generated Index

Open:

registry/generated/lab-index.jsonl

Explain that this file is generated from lab.yaml files and can feed:

Lab catalog dashboards
Evidence automation
AI assistants
Repo health scoring
Accelerator lifecycle tracking
7. Show the Bounded AI PR Reviewer Lab

Open:

labs/ai-workflows/bounded-ai-pr-reviewer/

Explain that the AI workflow is intentionally advisory-only. It can summarize and assist, but it cannot approve, merge, deploy, certify, or override human review.

8. Show the Accelerator Candidate

Open:

accelerators/ai-workflow-prompts/bounded-pr-reviewer/

Explain how validated labs can become reusable accelerators.

Demo Close

This lab is not just a collection of scripts. It is a bounded engineering governance system.

It shows how an organization can move quickly with prototypes and AI-enabled workflows while preserving:

Human authority
Security boundaries
Reviewable evidence
Metadata discipline
CI/CD quality gates
Reusable delivery patterns
