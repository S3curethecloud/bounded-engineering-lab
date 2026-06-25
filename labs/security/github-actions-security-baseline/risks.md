# Risks

## Risk: False Negatives in Secret Detection

The lightweight grep-based secret check can miss secrets.

Mitigation:

- Treat this as a baseline only.
- Add GitHub secret scanning or enterprise tooling where available.
- Require human review for sensitive workflow changes.

## Risk: False Positives

The check may flag documentation examples or placeholder text.

Mitigation:

- Review findings manually.
- Use allowlisting only with clear justification.

## Risk: Overstated Compliance Claims

Generated evidence could be misinterpreted as certification.

Mitigation:

- Include explicit readiness-only disclaimers.
- Require compliance review before external claims.

## Risk: Workflow Permission Expansion

Future workflow changes may add broader permissions.

Mitigation:

- Keep explicit workflow `permissions` blocks.
- Require review for `.github/workflows/` changes.
