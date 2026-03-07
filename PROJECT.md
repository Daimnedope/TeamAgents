
Technical specification and operational configuration for the agent-driven
software development workspace.

This document defines:

- technology stack
- repository architecture
- development commands
- coding rules
- validation pipeline
- CI requirements

All agents must treat this document as the **technical source of truth**.

---

# 1. System Overview

This repository implements an **agent-driven product development platform**.

The system transforms a user request into a working software product using a
multi-agent workflow.

Core stages:

```

User Request
↓
PRD Generation
↓
Task Planning
↓
Architecture Design
↓
Implementation
↓
Testing
↓
Review
↓
Deployment

```

Agents collaborate through structured documentation and strict development
rules.

Primary documents:

```

AGENTS.md
PROJECT.md
docs/prds/
docs/architecture/

```

---

# 2. Technology Stack

This project uses a **modern scalable AI-driven architecture**.

## Language

Primary backend language:

```

Python 3.11+

```

Reasons:

- strong AI ecosystem
- rapid prototyping
- mature tooling
- strong testing frameworks

---

## Backend Framework

```

FastAPI

```

Responsibilities:

- API layer
- agent orchestration
- service layer
- async processing

---

## AI Integration

Supported LLM providers:

```

OpenAI
Anthropic
Google Gemini
Local models (optional)

```

LLM access must be abstracted behind a **provider interface**.

Example location:

```

src/core/llm/

```

---

## Task Orchestration

Agent execution may use:

```

async Python
task queues (optional)
workflow orchestration

```

Future support:

```

Temporal
LangGraph
custom orchestrator

```

---

## Database

Primary database:

```

PostgreSQL

```

Used for:

- PRD storage
- agent task history
- architecture metadata
- system logs

ORM:

```

SQLAlchemy

```

---

## Caching

```

Redis

```

Used for:

- agent session state
- job queues
- caching LLM responses

---

## API Interface

API style:

```

REST

```

Future extension:

```

GraphQL

```

---

## Containerization

Deployment uses:

```

Docker
Docker Compose

```

Future scaling:

```

Kubernetes

```

---

# 3. Repository Structure

Agents must follow this structure strictly.

```

root
│
├── docs/
│   ├── prds/
│   ├── architecture/
│   ├── templates/
│   └── decisions/
│
├── src/
│   ├── agents/
│   │   ├── create_prd_agent/
│   │   ├── planning_agent/
│   │   ├── architecture_agent/
│   │   ├── implementation_agent/
│   │   └── testing_agent/
│   │
│   ├── core/
│   │   ├── llm/
│   │   ├── orchestrator/
│   │   ├── prompts/
│   │   └── config/
│   │
│   ├── services/
│   │
│   ├── api/
│   │
│   └── utils/
│
├── tests/
│   ├── unit/
│   ├── integration/
│   └── fixtures/
│
├── scripts/
│
├── docker/
│
├── AGENTS.md
├── PROJECT.md
└── README.md

```

Agents must not create alternative directory layouts.

---

# 4. Environment Setup

Minimum requirements:

```

Python 3.11+
PostgreSQL
Redis
Docker

```

---

## Installation

```

git clone <repository>

cd project

python -m venv .venv
source .venv/bin/activate

pip install -r requirements.txt

```

---

## Environment Variables

Configuration must be provided via environment variables.

Example:

```

OPENAI_API_KEY=
ANTHROPIC_API_KEY=
DATABASE_URL=
REDIS_URL=

```

`.env` files must **never be committed**.

---

# 5. Development Commands

Agents must use the following commands.

## Run Development Server

```

make dev

```

or

```

uvicorn src.api.main:app --reload

```

---

## Run Tests

```

make test

```

or

```

pytest

```

---

## Lint Code

```

make lint

```

or

```

ruff check .

```

---

## Type Checking

```

make typecheck

```

or

```

mypy src

```

---

## Format Code

```

make format

```

or

```

ruff format .

```

---

## Full Validation

Agents must run this before committing code.

```

make validate

```

Validation includes:

```

lint
typecheck
tests
format

```

---

# 6. Coding Standards

All code must follow strict standards.

## Naming

Use descriptive names.

Example:

Good:

```

generate_prd_document

```

Bad:

```

gen_doc

```

---

## Function Design

Functions must:

- be short
- perform one task
- have clear inputs and outputs

---

## File Size

Recommended maximum:

```

300 lines per file

```

Large files must be split into modules.

---

## Import Order

```

1. standard library
2. third-party libraries
3. project modules

````

Example:

```python
import os
import json

from fastapi import FastAPI

from src.services.prd_service import PRDService
````

---

# 7. Agent Development Rules

Agents must implement a consistent interface.

Example:

```python
class Agent:

    def run(self, input_data: dict) -> dict:
        raise NotImplementedError
```

Each agent must:

* accept structured input
* produce structured output
* log execution

---

# 8. Logging

Logging must be structured.

Use JSON logs.

Example fields:

```
timestamp
agent_name
operation
status
duration
```

Logs must not contain sensitive information.

---

# 9. Testing Framework

Testing framework:

```
pytest
```

Test types:

```
unit tests
integration tests
workflow tests
```

---

## Test Naming

```
test_<module>_<behavior>.py
```

Example:

```
test_prd_generation.py
```

---

## Test Requirements

Every PRD acceptance criterion must have a corresponding test.

Tests must:

* be deterministic
* avoid real API calls
* mock external services

---

# 10. Security Rules

Agents must follow strict security practices.

NEVER:

```
log secrets
store tokens in code
commit .env
expose credentials
```

All sensitive values must come from environment variables.

---

# 11. CI Pipeline

Continuous integration must run automatically.

Pipeline stages:

```
install dependencies
lint
type check
tests
build
```

Pull requests must pass CI before merge.

---

# 12. Git Workflow

Branch naming:

```
feat/<feature>
fix/<bug>
chore/<maintenance>
docs/<documentation>
```

Commit format:

```
feat: add PRD generation agent
fix: correct architecture validation
docs: update architecture docs
```

---

# 13. Performance Targets

Target metrics:

```
API latency < 200ms
PRD generation < 5s
test suite < 60s
```

---

# 14. Scalability Principles

The architecture must support:

```
multi-agent orchestration
horizontal scaling
async execution
LLM provider abstraction
```

Agents must avoid tightly coupled dependencies.

---

# 15. Future Extensions

Planned future capabilities:

```
distributed agent execution
automatic architecture generation
code synthesis pipelines
self-improving agents
deployment automation
```

Architecture decisions must allow these features without major rewrites.

```
```
