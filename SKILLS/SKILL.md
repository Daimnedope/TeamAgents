
name: create-prd
description: Generate structured Product Requirements Documents (PRDs) for this repository using the official PRD template. Use this skill when defining a new feature, planning product capabilities, describing user scenarios, or preparing requirements before implementation. This skill ensures that all development follows the PRD-driven workflow defined in AGENTS.md and that requirements can be validated through automated tests.
---

# Create PRD Skill

This skill generates **Product Requirements Documents (PRDs)** that comply with the repository standards.

PRDs act as the **source of truth for feature development**.

All implementation, architecture design, and testing must trace back to requirements defined in a PRD.

System-wide rules are defined in:

```

AGENTS.md
PROJECT.md

```

---

# Repository Structure

PRDs must follow the repository structure defined in `PROJECT.md`.

```

docs/
prds/
architecture/
templates/
decisions/

```

All PRDs must be saved to:

```

docs/prds/

```

Example:

```

docs/prds/user-authentication.md
docs/prds/report-generation.md
docs/prds/payment-system.md

```

---

# Core Development Principle

The repository follows **PRD-Driven Development**.

Rules:

1. No feature may be implemented without a PRD.
2. Each feature must define user scenarios.
3. Each scenario must include acceptance conditions.
4. Acceptance conditions must be testable.
5. Tests must validate acceptance conditions.

Example acceptance condition:

```

GIVEN a valid email address
WHEN the user submits the registration form
THEN a new user account is created

```

Each acceptance condition must correspond to at least one test.

---

# PRD Creation Workflow

Follow these steps when generating a PRD.

---

# Step 1 — Understand the Feature

Before writing the PRD, clarify the feature.

Key questions:

- What problem does this feature solve?
- Who are the users?
- What workflows must be supported?
- What outcome defines success?

If required information is missing, request clarification.

Agents must **not invent requirements**.

---

# Step 2 — Define the Problem

Describe the problem the feature addresses.

Include:

- current system behavior
- user pain points
- supporting evidence (if available)
- consequences if the problem remains unresolved

Focus on **user needs**, not implementation details.

---

# Step 3 — Identify Target Users

Define the primary users.

Example attributes:

- user role
- technical level
- environment (web / API / mobile)
- user goals

Avoid vague descriptions such as "all users".

---

# Step 4 — Write User Scenarios

User scenarios describe real workflows supported by the feature.

Each scenario must contain:

- user role
- goal
- acceptance conditions

Example:

```

Scenario — Generate Report

User role: Analyst

Goal:
The user wants to generate a report from analytics data.

Acceptance Conditions:

GIVEN valid report parameters
WHEN the report generation endpoint is called
THEN a report is created successfully

```

Include input/output examples when appropriate.

---

# Step 5 — Define Feature Scope

Define what the feature includes.

## Included

Capabilities that must be implemented.

## Excluded

Capabilities intentionally left out.

Clear boundaries prevent **scope creep**.

---

# Step 6 — Provide Technical Context

Describe relevant technical information.

Examples:

- affected modules
- API endpoints
- database changes
- architectural constraints

Relevant locations based on `PROJECT.md`:

```

src/services/
src/api/
src/agents/
tests/

```

Do not over-specify implementation details.

Architecture and implementation agents will define the final design.

---

# Step 7 — Define Quality Requirements

Each PRD must include non-functional requirements.

Typical examples:

- performance targets
- reliability expectations
- accessibility requirements
- minimum test coverage

Example:

```

API response time must remain below 200ms (p95).

```

---

# Step 8 — Define Implementation Phases

Break the implementation into logical phases.

Typical phases:

1. Data layer
2. Service / business logic
3. API layer
4. Integration and testing

Development must follow architecture rules defined in:

```

PROJECT.md

```

---

# Writing Guidelines

PRDs must use clear and structured language.

Prefer:

- concise sentences
- structured sections
- concrete examples

Avoid:

- vague descriptions
- unnecessary implementation details
- speculative future features

PRDs describe **what the system must do**, not **how the code should be written**.

---

# Acceptance Condition Rules

Acceptance conditions must follow the format:

```

GIVEN [initial state]
WHEN [action]
THEN [expected result]

```

Optional validation:

```

AND [additional verification]

```

Guidelines:

- each condition must be testable
- avoid ambiguous wording
- define measurable outcomes

Bad example:

```

THEN the system works correctly

```

Good example:

```

THEN the API returns status 201 and a new user record is created

```

---

# PRD Validation Checklist

Before finalizing the PRD ensure:

- the problem is clearly defined
- user scenarios are present
- acceptance conditions are testable
- scope boundaries are explicit
- technical context is provided
- implementation phases are defined

---

# Relationship to AGENTS.md

PRDs drive the development workflow defined in **AGENTS.md**.

Agents must:

- read the PRD before implementation
- map implementation to acceptance conditions
- write tests validating those conditions

PRDs therefore act as the **contract between product requirements and engineering implementation**.

---

# Output Location

All generated PRDs must be saved to:

```

docs/prds/[feature-name].md

```

Use clear, descriptive names.

Examples:

```

docs/prds/user-authentication.md
docs/prds/report-generation.md
docs/prds/payment-processing.md

```

---

# Best Practices

Strong PRDs:

- describe real user workflows
- define measurable outcomes
- clearly separate requirements from implementation
- minimize ambiguity

Weak PRDs:

- describe vague ideas
- mix product requirements with implementation details
- omit acceptance conditions
