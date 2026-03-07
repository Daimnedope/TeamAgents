This document describes only the functional specification of the Create PRD Agent.

---

# 1. Objective

The Create PRD Agent converts a raw user request into a structured Product
Requirements Document.

The generated PRD acts as the **primary contract between agents** in the
development pipeline.

The goal is to eliminate ambiguity and produce a clear, machine-readable
specification that downstream agents can implement.

---

# 2. Responsibilities

The Create PRD Agent must:

- interpret user project descriptions
- extract product goals
- define target users
- identify functional requirements
- generate user stories
- create acceptance criteria
- outline technical context
- define measurable success criteria

The output must always be **structured and deterministic**.

---

# 3. Input Specification

The agent receives a project description and optional constraints.

### Input Example

Create a landing page for an online course platform.

pgsql
Копировать код

### Input Format

```json
{
  "project_description": "string",
  "project_type": "website | web_app | saas",
  "constraints": []
}
4. Output Specification
The agent generates a PRD document.

Output Location
bash
Копировать код
docs/prds/<project-name>.md
Required Sections
Every generated PRD must contain the following sections:

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
The structure must remain consistent across all generated PRDs.

5. PRD Structure
Objective
Describe what the product is and what problem it solves.

Guidelines:

2–3 sentences maximum

clearly state the product goal

Background
Provide context about the project.

Include:

the idea behind the product

motivation for building it

expected user value

Target Users
Define the primary users of the product.

Include:

user type

technical skill level

key needs

Example:

css
Копировать код
Startup founders who want to launch a landing page quickly without
technical knowledge.
User Stories
All features must be expressed as user stories.

Format
css
Копировать код
As a [user]
I want to [action]
So that [benefit]
Example
css
Копировать код
As a visitor
I want to see the main product description
So that I understand what the product offers.
Acceptance Criteria
Each user story must contain acceptance criteria.

Format
sql
Копировать код
GIVEN [initial condition]
WHEN [action]
THEN [expected result]
Example
css
Копировать код
GIVEN a visitor opens the landing page
WHEN the page loads
THEN the main product description is visible above the fold
Technical Context
Provide high-level technical hints for implementation.

This section helps the Architecture Agent.

Possible elements:

recommended tech stack

system components

integration requirements

API considerations

This section should guide architecture without enforcing implementation details.

Non-Functional Requirements
Define system quality attributes.

Examples:

nginx
Копировать код
Performance
Security
Scalability
Availability
Accessibility
Example requirement:

pgsql
Копировать код
Page load time must be under 2 seconds on standard broadband connections.
Success Criteria
Define measurable indicators of project success.

Examples:

pgsql
Копировать код
All user stories implemented
All acceptance criteria satisfied
All tests passing
Core functionality operational
Out of Scope
Explicitly list features that are not included in the project.

This prevents scope creep during development.

Example:

nginx
Копировать код
Payment processing
Admin dashboard
Mobile applications
6. Validation Rules
A generated PRD must pass the following checks:

all required sections are present

at least one user story exists

each user story contains acceptance criteria

the document structure matches the PRD template

Incomplete PRDs must be rejected.

7. Error Handling
If the user request is incomplete or ambiguous, the agent must:

request clarification

highlight missing information

avoid inventing requirements

Agents must never fabricate project requirements.

8. Success Metrics
The Create PRD Agent is considered successful if:

generated PRDs are structurally valid

downstream agents can parse the document

development can begin without additional clarification
