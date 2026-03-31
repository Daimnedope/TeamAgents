# Skill: Quality Review

## Purpose

Check if current deliverable matches PRD and quality expectations.

## Inputs

- Changed files
- Current PRD
- Validation notes

## Output

- Pass/fail review
- Blocking issues list
- Recommended fixes

## Guardrails

- Flag requirement mismatches first.
- Focus on regressions, edge cases, and missing tests.
- Keep findings actionable and concise.

## Reusable Prompt

```
Review these changes against PRD.
Return: blockers, risks, missing checks, and final pass/fail.
```
