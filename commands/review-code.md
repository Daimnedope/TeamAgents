# Command: review-code

## Goal

Perform a fast but strict quality review before commit.

## Inputs

- Changed files
- Current PRD (`docs/prd/PRD.md`)

## Checklist

1. Requirement coverage:
   - Every implemented change maps to a PRD item.
2. Acceptance criteria:
   - Each criterion is either satisfied or explicitly marked pending.
3. Code quality:
   - No dead code
   - Clear naming
   - No duplicated logic without reason
4. Risks:
   - Edge cases are considered
   - Basic failure paths are handled
5. Documentation:
   - Any user-visible behavior changes are documented

## Output Format

- **Pass**: short note with checked items.
- **Fail**: list blocking items and required fixes.

## Blocking Conditions

- No PRD mapping
- Missing acceptance criteria checks
- Major regressions or unresolved TODOs in core flow
