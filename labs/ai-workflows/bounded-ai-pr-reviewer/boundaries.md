# Boundaries

## Allowed Actions

This lab may:

- Summarize pull request changes
- Identify possible risks
- Suggest human review questions
- Generate review evidence
- Map changes to documented control boundaries

## Prohibited Actions

This lab must not:

- Approve pull requests
- Merge pull requests
- Deploy code
- Modify production systems
- Override branch protection
- Override CODEOWNERS
- Create security exceptions
- Certify compliance
- Treat AI output as authoritative

## Required Permissions

The workflow should use read-only repository permissions by default.

## Data Handling

The lab reads repository and pull request content. It must not require production secrets, customer confidential data, or privileged runtime credentials.

## Human Review

Human review is required before:

- Merge
- Release
- Deployment
- Security exception approval
- Compliance assertion
- Promotion to accelerator
