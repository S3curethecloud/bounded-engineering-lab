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
```

## Design Decisions

1. AI output is advisory only.
2. Human review remains authoritative.
3. The workflow does not receive deployment credentials.
4. The workflow does not mutate protected branches.
5. The workflow produces evidence suitable for review.

## Extension Points

This lab can later add:

- A bounded review prompt template
- A sample pull request diff fixture
- A GitHub Actions workflow with read-only permissions
- Evidence output examples
- Policy checks for advisory-only language
