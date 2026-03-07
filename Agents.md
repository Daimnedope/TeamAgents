
Universal operational rules for AI agents working in this repository.

This document defines how agents interact with:
- Product Requirements Documents (PRDs)
- the codebase
- the development workflow
- other agents in the system.

All agents must strictly follow the rules defined here.

---

# 1. System Purpose

This repository implements an **agent-driven product development system**.

The system transforms a user request into a working software product through
a sequence of specialized AI agents.

Development is **PRD-driven**.

PRD documents act as the **primary contract between agents**.

No development work may begin without a valid PRD.

---

# 2. Source of Truth

Agents must respect the following hierarchy of authority:

1. PRD (`docs/prds/*.md`)
2. Architecture documents (`docs/architecture/*.md`)
3. `PROJECT.md`
4. `AGENTS.md`

If conflicts occur, the higher-level document takes precedence.

Agents must **never override PRD requirements** without explicit approval.

---

# 3. Agent Architecture

The system uses a **multi-agent architecture**.

Each agent has a clearly defined responsibility.

## Create PRD Agent

Responsible for transforming user input into structured PRD documents.

Output location:

```

docs/prds/

```

Responsibilities:

- interpret user request
- define product objective
- generate user stories
- define acceptance criteria
- describe technical context
- define success criteria

PRD documents must follow the template defined in `Create-PRD.md`.

---

## Planning Agent

Responsible for decomposing the PRD into executable development tasks.

Responsibilities:

- identify development steps
- determine dependencies
- define implementation order

Output:

```

task execution plan

```

---

## Architecture Agent

Responsible for designing the system architecture.

Responsibilities:

- define system components
- define module boundaries
- define technology choices
- document architecture decisions

Output location:

```

docs/architecture/

```

---

## Implementation Agent

Responsible for writing production code.

Responsibilities:

- implement PRD requirements
- follow architecture documents
- write clean and maintainable code
- ensure all acceptance criteria are satisfied

Code must be written only after architecture approval.

---

## Testing Agent

Responsible for validating system correctness.

Responsibilities:

- create unit tests
- create integration tests
- verify PRD acceptance criteria

Every acceptance criterion must have at least one test.

---

## Review Agent

Responsible for quality assurance.

Responsibilities:

- code review
- architectural compliance
- security verification

---

# 4. Repository Structure

Agents must follow the repository structure.

```

docs/
├── prds/
├── architecture/
└── templates/

src/
├── agents/
├── core/
├── services/
├── api/
└── utils/

tests/
├── unit/
├── integration/
└── fixtures/

```

Agents must not create arbitrary folders.

---

# 5. Development Workflow

All development must follow this pipeline.

```

User Request
↓
Create PRD Agent
↓
Planning Agent
↓
Architecture Agent
↓
Implementation Agent
↓
Testing Agent
↓
Review Agent

```

Agents must **not skip stages**.

---

# 6. PRD Compliance

Agents must treat the PRD as a contract.

Agents must:

- implement all user stories
- satisfy all acceptance criteria
- respect defined technical constraints

If the PRD is incomplete, the agent must request clarification.

Agents must **never guess missing requirements**.

---

# 7. Coding Principles

All code must follow these principles.

### Single Responsibility

Functions must have a single responsibility.

### Readability

Code must prioritize clarity over cleverness.

### Explicitness

Avoid hidden behavior and implicit assumptions.

### Modularity

Components must be loosely coupled.

### Error Handling

Errors must never be silently ignored.

---

# 8. Code Quality Rules

Agents must follow repository coding standards.

General requirements:

- descriptive variable names
- small functions
- minimal nesting
- clear module boundaries
- no unnecessary abstractions

Language-specific rules are defined in:

```

PROJECT.md

```

---

# 9. Testing Rules

Testing is mandatory.

Rules:

- every PRD acceptance criterion must have tests
- external APIs must be mocked
- tests must be deterministic
- avoid hardcoded test data

Test structure must follow:

```

tests/
├── unit/
└── integration/

```

---

# 10. Security Rules

Agents must follow strict security policies.

Agents must NEVER:

- log secrets
- expose API keys
- commit `.env` files
- disable security middleware

Sensitive values must be stored in environment variables.

---

# 11. Git Workflow

Branch naming convention:

```

feat/feature-name
fix/bug-description
chore/maintenance-task
docs/documentation-update

```

Commit messages must follow conventional commits:

```

feat:
fix:
chore:
docs:

```

Pull requests must pass:

- automated tests
- lint checks
- type checks

All merges into `main` must use **squash merge**.

---

# 12. Validation

Before committing code, agents must run project validation commands defined in:

```

PROJECT.md

```

Typical validation steps include:

- build
- test
- lint
- type checking

Agents must never commit code if validation fails.

---

# 13. Documentation Policy

Documentation must be updated whenever:

- a new feature is introduced
- architecture changes
- APIs are modified

Documentation locations:

```

docs/prds/
docs/architecture/

```

---

# 14. Prohibited Actions

Agents must NEVER:

- bypass PRDs
- implement features without requirements
- modify architecture without documentation
- skip tests
- commit secrets
- ignore validation errors

Violations are considered critical failures.

---

# 15. System Philosophy

This project follows a **PRD-first development model**.

Key principles:

- requirements drive development
- architecture guides implementation
- testing validates correctness
- documentation ensures traceability

Agents must prioritize **predictable, structured, and auditable development**.
```

