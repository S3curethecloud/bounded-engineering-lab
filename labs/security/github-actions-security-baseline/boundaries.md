# Boundaries

## Allowed Actions

This lab may:

- Validate repository structure
- Check for required lab files
- Search for obvious committed secret patterns
- Generate local markdown evidence
- Upload evidence artifacts from GitHub Actions

## Prohibited Actions

This lab must not:

- Deploy to production
- Access production secrets
- Rotate credentials
- Approve pull requests
- Approve releases
- Mutate cloud infrastructure
- Process customer confidential data
- Claim security or compliance certification

## Required Permissions

Default workflow permissions should be read-only unless a workflow explicitly requires a narrow additional permission.

## Data Handling

The lab reads repository files only. It should not require external customer data, production logs, or secret material.

## Human Review

Human review is required before:

- Adding new workflow permissions
- Adding third-party actions
- Introducing cloud credentials
- Promoting this lab to a reusable accelerator
