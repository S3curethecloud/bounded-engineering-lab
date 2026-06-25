# Validation Model

## Purpose

The validation model defines how labs prove they work within their stated boundaries.

## Validation Levels

| Level | Name | Description |
| --- | --- | --- |
| 0 | Documented | Scope, design, and boundaries are documented. |
| 1 | Runnable | A reviewer can run the artifact locally or in CI. |
| 2 | Tested | The artifact includes tests or validation scripts. |
| 3 | Evidence-backed | Execution produces reviewable evidence. |
| 4 | Accelerator-ready | The artifact is reusable, documented, and reviewed. |

## Minimum Validation Requirements

Every lab must include:

- Setup instructions
- Execution instructions
- Expected results
- Failure conditions
- Manual or automated validation steps
- Evidence output location

## CI Validation

The repository CI validates:

- Required top-level files
- Lab folder standards
- Required lab metadata
- Boundary documentation
- Evidence model availability

## Manual Review

Some labs require manual review, especially those involving:

- Security controls
- Compliance claims
- Deployment patterns
- AI-generated summaries or recommendations
- Permission-sensitive GitHub Actions workflows

## Validation Evidence

Evidence may include:

- CI logs
- Test output
- Markdown summaries
- JSON reports
- SBOM files
- Security scan output
- Screenshots
- Pull request review records
