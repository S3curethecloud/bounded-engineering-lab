# Risks

## Risk: AI Hallucination

The AI may generate incorrect or unsupported review findings.

Mitigation:

- Treat output as advisory.
- Require human reviewer disposition.
- Include source references where possible.

## Risk: Over-Reliance

Reviewers may treat AI output as authoritative.

Mitigation:

- Include explicit non-authority boundary.
- Require human approval outside the AI workflow.

## Risk: Sensitive Data Exposure

Pull request content may include sensitive material.

Mitigation:

- Do not process production secrets.
- Use secret scanning before AI review where possible.
- Avoid sending sensitive customer data to external systems.

## Risk: Governance Bypass

AI could be incorrectly wired into merge or deployment gates.

Mitigation:

- No autonomous approval permissions.
- No write permissions by default.
- CODEOWNERS review required for workflow changes.
