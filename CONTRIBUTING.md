# Contributing

Thank you for contributing to Bounded Engineering Lab.

This repository accepts bounded engineering artifacts only. Every contribution must be explicit about scope, authority, security assumptions, validation, evidence, and limitations.

## Contribution Types

Accepted contribution types include:

- New lab proposals
- Bounded prototypes
- Reusable accelerators
- Deployment patterns
- CI/CD workflows
- Security control patterns
- Compliance evidence models
- AI-enabled workflow patterns with human review boundaries
- Documentation improvements

## Required Contribution Standard

Before opening a pull request, confirm that the contribution includes:

- Clear objective
- Scope and out-of-scope sections
- Design notes
- Boundary statement
- Validation method
- Evidence output or sample evidence
- Risk notes
- Reuse path

## Lab Folder Standard

Each lab should use this structure:

```text
labs/<category>/<lab-name>/
├── README.md
├── design.md
├── boundaries.md
├── implementation/
├── tests/
├── evidence/
├── risks.md
└── next-steps.md
```

## Pull Request Expectations

Pull requests should:

1. Describe the engineering problem being addressed.
2. State whether the change is a lab, prototype, accelerator, example, or documentation update.
3. List validation performed.
4. List evidence generated.
5. Disclose security and compliance impact.
6. Confirm that no production secrets or uncontrolled credentials are included.
7. Confirm that AI outputs, if used, are non-authoritative and human-reviewed.

## Security Rules

Do not commit:

- Production secrets
- Private keys
- Cloud credentials
- Personal access tokens
- Customer confidential data
- Live production endpoints unless explicitly intended and approved
- Autonomous AI approval, deployment, or enforcement logic

## Review Model

A contribution can be promoted from lab to accelerator only after engineering review confirms:

- Bounded scope
- Repeatable validation
- Reviewable evidence
- Secure defaults
- Clear reuse model
- Known limitations
