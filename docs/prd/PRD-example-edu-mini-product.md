# PRD-example-edu-mini-product.md

## 1. Product Summary

- **Name:** Flashcard Trainer + Mini Quiz
- **One-line value proposition:** students learn a topic via flashcards and reinforce understanding with a quick quiz and feedback.
- **Audience:** students (years 1-3), instructors as supervisors

## 2. Problem

Students struggle to practice consistently: materials exist, but there are no short learning cycles with immediate understanding checks.

## 3. Goals and Metrics

- Goal 1: reduce time from "reading" to "active practice"
- Goal 2: provide fast feedback on mistakes
- Success metrics:
  - at least 70% of users complete the mini quiz after viewing flashcards
  - average flashcards + quiz completion time <= 10 minutes

## 4. Scope

### In Scope

- topic list
- flashcards within a topic
- mini quiz (5 questions)
- score and feedback (correct/incorrect + correct answer)

### Out of Scope

- user registration
- advanced analytics (charts, long-term progress)
- payments and subscriptions

## 5. User Stories

1. As a student, I want to open a topic and view flashcards so I can understand the material.
2. As a student, I want to complete a mini quiz for the topic so I can reinforce what I learned.
3. As a student, I want to receive results with explanations so I can correct mistakes.

## 6. Acceptance Criteria

- [ ] User can select a topic from the list.
- [ ] Flashcards are shown for the selected topic (minimum 5).
- [ ] User can start a mini quiz (exactly 5 questions).
- [ ] After submission, the final score is displayed (percentage).
- [ ] For each incorrect answer, the correct answer and a short explanation are shown.

## 7. Non-functional Requirements

- Performance: topic and flashcard screens load in <= 2 seconds (demo mode without slow external APIs)
- Accessibility: proper contrast, readable font size, keyboard navigation
- Maintainability: code structure separates UI from quiz logic
- Security: no personal data processing and no authentication required

## 8. Risks and Assumptions

- Risk: too much flashcard content can slow down the demo.
  - Mitigation: keep at least 1 topic and 5 flashcards.
- Assumption: instructor provides topic list and question wording.

## 9. Milestones

- M1: topic content CRUD + flashcard rendering
- M2: mini quiz (5 questions) + scoring
- M3: feedback output + final AC verification

## 10. Definition of Done

- PRD is approved
- All acceptance criteria are marked as complete
- Demo scenario is documented
