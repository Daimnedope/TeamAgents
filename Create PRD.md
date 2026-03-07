# 1. Objective

Build an agent capable of transforming a raw user request into a structured
Product Requirements Document (PRD).

The generated PRD serves as the **primary input for all development agents**.

The goal is to eliminate ambiguity and produce a clear, structured specification
that downstream agents can implement.

---

# 2. Responsibilities

The Create PRD Agent must:

- interpret user requests
- extract product goals
- identify target users
- define functional requirements
- create user stories
- generate acceptance criteria
- outline technical context
- define success criteria

The output must always be **structured and machine-readable**.

---

# 3. Input

The agent receives a project description.

Example:

Create a landing page for an online course platform.

css
Копировать код

Input format:

```json
{
  "project_description": "string",
  "project_type": "website | web_app | saas",
  "constraints": []
}
# 4. Output
The agent generates a PRD document.

Output location:

bash
Копировать код
docs/prds/<project-name>.md
The PRD must follow a deterministic structure.

Required sections:

mathematica
Копировать код
Objective
Background
Target Users
User Stories
Technical Context
Non-Functional Requirements
Success Criteria
Out of Scope
5. PRD Structure
Objective
Describe what the product is and the problem it solves.

Maximum length: 2–3 sentences.

Background
Provide context about the request.

Include:

product idea

motivation

expected value

Target Users
Define who the product is built for.

Include:

user type

technical skill level

main needs

User Stories
Each feature must be expressed as a user story.

Format:

css
Копировать код
As a [user]
I want to [action]
So that [benefit]
User stories must include acceptance criteria.

Example:

css
Копировать код
GIVEN a visitor opens the landing page
WHEN the page loads
THEN the main product description is visible
Technical Context
Provide implementation hints.

Examples:

possible tech stack

major components

API considerations

integrations

This section is used by the Architecture Agent.

Non-Functional Requirements
Define quality attributes.

Examples:

nginx
Копировать код
performance
security
scalability
availability
Success Criteria
Define measurable outcomes.

Examples:

pgsql
Копировать код
all acceptance criteria implemented
tests passing
API endpoints functional
Out of Scope
Explicitly define what is NOT included in the project.

This prevents scope creep.

Example:

nginx
Копировать код
payment processing
admin dashboard
mobile applications
6. Validation Rules
Before a PRD is accepted:

all required sections must exist

at least one user story must be present

every user story must include acceptance criteria

Incomplete PRDs must be rejected.

7. Error Handling
If the user request is ambiguous or incomplete, the agent must:

request clarification

mark missing information

avoid inventing requirements

Agents must never fabricate requirements.

8. Success Metrics
The Create PRD Agent is considered successful if:

generated PRDs can be parsed by downstream agents

requirements are clear and structured

development agents can start implementation without clarification
