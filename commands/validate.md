# Command: validate

## Goal

Run a minimal pre-commit validation sequence for predictable quality.

## Inputs

- Current project changes
- Current PRD

## Validation Sequence

1. Structure check:
   - Required files exist:
     - `AGENTS.md`
     - `docs/prd/CREATE-PRD.md`
     - `docs/prd/PRD.md`
     - `SKILLS.md`
2. PRD check:
   - PRD has at least one user story and one acceptance criterion.
3. Consistency check:
   - Changed functionality is reflected in PRD or notes.
4. Final review:
   - No unresolved blockers in `commands/review-code.md`.

## Result

- **VALID**: ready to commit.
- **INVALID**: list missing files/items and fix instructions.
