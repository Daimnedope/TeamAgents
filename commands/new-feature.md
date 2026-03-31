# Command: new-feature

## Goal

Run a consistent flow from idea to implementable, reviewed feature for an educational mini-product or website.

## Inputs

- Feature idea (1-3 sentences)
- Target audience
- Constraints (time, stack, scope)

## Steps

1. Clarify the user problem and expected outcome.
2. Create or update `docs/prd/PRD.md` with:
   - goals
   - scope (in/out)
   - user stories
   - acceptance criteria
3. Validate that acceptance criteria are testable.
4. Split work into MVP tasks with clear deliverables.
5. Implement only MVP scope.
6. Run review checklist from `commands/review-code.md`.
7. Run validation checklist from `commands/validate.md`.

## Expected Outputs

- Updated `docs/prd/PRD.md`
- Implemented MVP changes
- Validation notes (short markdown section in PR or commit notes)

## Failure Handling

- If PRD is incomplete: stop and complete PRD first.
- If criteria are not testable: rewrite criteria before coding.
- If scope is too large: cut to MVP and defer extras.
