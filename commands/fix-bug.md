# Command: fix-bug

## Goal

Handle a bug from report to verified fix in a structured way.

## Inputs

- Bug description (symptoms, where/when)
- Expected behavior
- Links: PRD section or acceptance criterion (if available)

## Steps

1. Understand the bug:
   - Reproduce it step by step.
   - Record the minimal reproducible scenario.
2. Find the root cause:
   - Identify which module/file triggers the issue.
   - Compare actual behavior with current PRD expectations.
3. Plan the fix:
   - Define the minimal change needed (avoid unnecessary refactoring).
4. Apply the fix:
   - Update code with the smallest safe change while preserving current design.
5. Verify:
   - Re-run the reproducible scenario and confirm the bug is gone.
   - Confirm no new undesired behavior appears.
6. Update PRD/documentation:
   - If user-visible behavior changes, update PRD notes.

## Expected Outputs

- Short root-cause description.
- Change list (2-5 concise points).
- Confirmation that the reproducible scenario now passes.

## Failure Handling

- If the bug is not reproducible: document attempted steps and observed results.
- If the fix breaks another scenario: roll back and revise the fix plan.
