
andard specification used by the multi-agent development system.

PRDs act as the **primary contract between agents** and define the feature
requirements that drive architecture, implementation, and testing.

System rules and architecture are defined in:

- `AGENTS.md`
- `PROJECT.md`

PRDs must follow this structure so that downstream agents can parse them reliably.

---

# Document Metadata

| Field | Value |
|------|------|
| **PRD** | [Feature / Capability Name] |
| **Stage** | Draft \| Review \| Approved \| Building \| Released |
| **Owner** | [Product Manager / Agent] |
| **Created** | YYYY-MM-DD |
| **Updated** | YYYY-MM-DD |
| **Priority** | P0 \| P1 \| P2 \| P3 |
| **Stakeholders** | [Teams / Agents] |

---

# 1. Overview

## Feature Summary

Brief description of the feature and the value it provides.

Example:

> This feature enables users to generate automated analytics reports
and receive them by scheduled email.

---

## Strategic Goal

Explain how the feature supports the product roadmap or business strategy.

---

# 2. Problem Description

## Current Situation

Describe how the system currently behaves.

---

## User Pain Points

Main problems experienced by users.

- Pain point 1
- Pain point 2
- Pain point 3

---

## Evidence

Supporting sources:

- analytics metrics
- user feedback
- support tickets
- competitive analysis

---

## Impact if Unresolved

Describe the consequences if the problem is not solved.

---

# 3. Target Audience

| Segment | Description | Needs |
|------|------|------|
| [Segment] | [User description] | [Primary need] |

Include:

- experience level
- platform environment
- technical knowledge

---

# 4. User Scenarios

Each scenario represents a core user workflow.

Agents use these scenarios to derive implementation tasks.

---

## Scenario 1 — [Title]

**User role:** [persona]

**Goal:** The user performs an action to achieve a result.

### Acceptance Conditions

```

GIVEN [initial state]
WHEN [user action]
THEN [system result]

```

Optional extended validation:

```

GIVEN [state]
WHEN [action]
THEN [result]
AND [additional validation]

```

---

### Example Cases

| Request | Result |
|------|------|
| `{email:"test@test.com"}` | `{status:201,user_id:"abc123"}` |
| `{email:""}` | `{status:400,error:"email required"}` |

---

**Estimated Effort:** Small \| Medium \| Large  
**Dependencies:** [other scenario or system component]

---

## Scenario 2 — [Title]

**User role:** [persona]

**Goal:** Additional workflow enabled by the feature.

### Acceptance Conditions

```

GIVEN [state]
WHEN [action]
THEN [expected result]

```

**Estimated Effort:** Small \| Medium \| Large  
**Dependencies:** Scenario 1

---

# 5. Functional Scope

## Included

Capabilities implemented by this feature.

- Capability A
- Capability B
- Capability C

---

## Excluded

| Feature | Reason |
|------|------|
| Feature X | Future release |
| Feature Y | Outside project scope |

---

## Future Extensions

Potential improvements that may be implemented later.

---

# 6. Technical Context

This section helps the **Architecture Agent** and **Implementation Agent**.

Full technical conventions are defined in `PROJECT.md`.

---

## Relevant Components

| Location | Description |
|------|------|
| `src/services/...` | business logic |
| `src/api/...` | API layer |
| `src/agents/...` | agent integration |
| `tests/...` | testing patterns |

---

## Architecture Pattern Reference

Example pattern that should be followed.

Agents should replicate existing design patterns defined in the repository.

---

## Data Layer Updates

Describe database changes if required.

Example:

```

table reports
id
user_id
schedule
created_at

````

---

## API Specification

**POST** `/reports`

Request

```json
{
  "user_id": "string",
  "schedule": "string"
}
````

Response

```json
{
  "id": "string",
  "created": true
}
```

Possible errors

```
400 invalid request
403 unauthorized
500 internal error
```

---

## Technical Constraints

* Must integrate with the existing authentication system
* Target response time: < 200ms p95
* Must follow coding standards defined in `PROJECT.md`

---

# 7. UX / Interaction Flow

High-level interaction flow.

```
User action
   ↓
UI request
   ↓
API validation
   ↓
Service logic
   ↓
Database update
   ↓
Response
```

---

## Error Handling

| Situation     | Message                        | Recovery      |
| ------------- | ------------------------------ | ------------- |
| Invalid input | "Please provide a valid value" | Correct input |
| Network error | "Connection failed"            | Retry         |

---

# 8. Quality Requirements

| Category      | Requirement          |
| ------------- | -------------------- |
| Performance   | API response < 200ms |
| Reliability   | 99.9% uptime         |
| Accessibility | WCAG 2.1 AA          |
| Code Quality  | > 80% test coverage  |

Validation methods:

* automated testing
* load testing
* accessibility audits

---

# 9. Implementation Plan

Development must follow the architecture defined in `PROJECT.md`.

---

## Phase 1 — Data Layer

Tasks:

* implement schema changes
* create migration
* add unit tests

Validation:

run project validation pipeline.

---

## Phase 2 — Business Logic

Tasks:

* implement service logic
* add validation
* write unit tests

Validation:

run project validation pipeline.

---

## Phase 3 — API Layer

Tasks:

* implement endpoint
* create integration tests
* connect UI

Validation:

run project validation pipeline.

---

# 10. Deployment Strategy

| Stage    | Users         | Requirement        |
| -------- | ------------- | ------------------ |
| Internal | team only     | no critical issues |
| Beta     | limited users | stable metrics     |
| Release  | all users     | production ready   |

---

## Feature Flag

| Parameter        | Value            |
| ---------------- | ---------------- |
| Flag name        | `[feature_flag]` |
| Default state    | disabled         |
| Rollout strategy | gradual          |

---

# 11. Risk Assessment

| Risk              | Probability | Impact | Mitigation    |
| ----------------- | ----------- | ------ | ------------- |
| dependency delay  | medium      | high   | fallback plan |
| performance issue | low         | medium | load testing  |

---

# 12. Open Questions

| # | Question | Owner   | Status |
| - | -------- | ------- | ------ |
| 1 | [topic]  | [owner] | open   |

---

# 13. Agent Operating Rules

These rules guide autonomous development agents.

---

## Allowed

Agents may:

* run validation commands
* update files related to the feature
* reuse existing patterns

---

## Requires Approval

Agents must request approval before:

* adding dependencies
* modifying shared interfaces
* changing database schemas beyond this PRD

---

## Forbidden

Agents must never:

* commit secrets
* remove tests
* modify historical migrations
* bypass validation rules

---

# 14. Completion Checklist

Before marking the feature complete:

* [ ] All acceptance conditions satisfied
* [ ] Tests passing
* [ ] Code coverage threshold met
* [ ] Security checks passed
* [ ] Documentation updated
* [ ] Code review completed

