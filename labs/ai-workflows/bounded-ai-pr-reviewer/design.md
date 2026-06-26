# Design

## Overview

This lab defines a bounded AI-assisted pull request review pattern.

The AI workflow reads pull request context and produces advisory outputs for a human reviewer. It must not approve, merge, deploy, or enforce policy autonomously.

## Components

| Component | Purpose |
| --- | --- |
| PR diff input | Source change context. |
| Boundary prompt | Defines AI authority limits. |
| Review summary | Human-readable summary of changes. |
| Risk notes | Possible security, compliance, operational, or maintainability risks. |
| Evidence output | Reviewable artifact for pull request traceability. |

## Workflow

```text
Pull Request
  -> Collect diff and metadata
  -> Apply bounded review prompt
  -> Generate advisory summary
  -> Generate risk notes
  -> Human reviewer evaluates output
  -> Evidence is attached to review record
Design Decisions
AI output is advisory only.
Human review remains authoritative.
The workflow does not receive deployment credentials.
The workflow does not mutate protected branches.
The workflow produces evidence suitable for review.
