PRD: Create PRD 

Status: Draft
Author: !!!!
Created: xxxx-xx-xx
Priority: P0 (critical)

1. Objective

Create PRD, который преобразует пользовательское описание проекта в структурированное Product Requirements Document (PRD), пригодное для дальнейшей обработки агентами системы (Planner, Architecture Agent, Code Agent, QA Agent).

Основная задача — устранить неоднозначность пользовательских запросов и предоставить машиночитаемую, формализованную спецификацию проекта.

2. Mission

Создать единый стандарт формализации требований, который станет контрактом между всеми агентами системы разработки.

PRD должен:

стандартизировать требования

структурировать задачи

фиксировать архитектурные ограничения

задавать правила разработки

Core Principles

Deterministic Structure

PRD должен иметь строго фиксированную структуру, чтобы агенты могли автоматически его парсить.

Agent Compatibility

Документ должен быть легко интерпретируемым различными агентами системы.

Implementation Readiness

PRD должен содержать достаточную информацию для начала разработки без дополнительных уточнений.

Traceability

Каждое требование должно быть связано с user story и acceptance criteria.

3. Background

В системах автономной разработки основной проблемой является неструктурированность пользовательских требований.

Большинство пользователей описывает проекты в свободной форме:

"Сделай сайт для продажи курсов"

Такие описания:

неполные

неоднозначные

не содержат архитектурных ограничений

Модуль Create PRD выполняет функцию аналитика требований, формируя из пользовательского описания структурированное ТЗ, которое используется всеми последующими агентами системы.

4. Target Users
Primary User

Пользователь платформы (стартапер, предприниматель, разработчик), который хочет создать сайт или веб-приложение.

Технический уровень:

низкий

средний

высокий

Secondary Users

AI агенты системы:

Planner Agent

Architecture Agent

Code Generation Agent

QA Agent

Deployment Agent

Для них PRD является основным входным документом.

5. User Stories
US-1: Generate Structured PRD

As a platform user
I want to provide a description of my project
So that the system generates a structured PRD for development agents.

Acceptance Criteria
GIVEN a user submits a textual project description
WHEN the Create PRD agent processes the request
THEN a structured PRD document is generated
AND the document follows the standardized PRD schema

GIVEN incomplete user input
WHEN PRD generation starts
THEN the agent identifies missing information
AND inserts clarification fields

Example
Input	Output
"Создай сайт для онлайн курсов"	PRD с user stories, архитектурой, API и функционалом
"Landing page для кофейни"	PRD с UI блоками, CMS требованиями и deployment

Complexity: M
Dependencies: None

US-2: Enforce PRD Standards

As a system architect
I want all generated PRDs to follow a strict schema
So that other agents can reliably parse them.

Acceptance Criteria
GIVEN a generated PRD
WHEN validation is executed
THEN all mandatory sections exist
AND the schema is respected


Complexity: S
Dependencies: US-1

US-3: Include Architecture Blueprint

As an Architecture Agent
I want the PRD to contain architecture hints
So that I can generate a scalable system design.

Acceptance Criteria
GIVEN a generated PRD
WHEN architecture section is produced
THEN the document includes
    - recommended tech stack
    - system components
    - API structure


Complexity: M
Dependencies: US-1

6. Technical Context
Relevant Files
File	Purpose
/agents/create_prd_agent.py	PRD generation logic
/schemas/prd_schema.json	PRD validation schema
/prompts/prd_generation_prompt.txt	LLM prompt template
/validators/prd_validator.py	PRD schema validation
/tests/test_prd_generation.py	Unit tests
Existing Patterns to Follow
class Agent:
    def __init__(self, name):
        self.name = name

    def run(self, input_data):
        raise NotImplementedError


All agents must implement a run() method.

Data Model

PRD должен соответствовать следующей структуре:

PRD
 ├── objective
 ├── mission
 ├── background
 ├── target_users
 ├── user_stories
 ├── architecture
 ├── technical_requirements
 ├── non_functional_requirements
 ├── risks
 └── success_criteria

API
POST /generate-prd

Request
{
  "project_description": "string",
  "project_type": "website | web_app | saas",
  "constraints": []
}

Response
{
  "prd_id": "uuid",
  "prd_document": "markdown",
  "status": "generated"
}

7. Non-Functional Requirements
Requirement	Target	Validation
PRD generation time	< 5 seconds	performance test
Schema compliance	100%	validator
System reliability	99% success	monitoring
Extensibility	modular agent design	architecture review
8. Implementation Phases
Phase 1: Schema Definition

Define PRD schema

Define mandatory sections

Implement schema validator

Validation:

Schema test suite must pass.

Phase 2: PRD Generation Agent

Implement Create PRD agent

Create prompt templates

Implement parsing logic

Validation:

Generated PRD must pass schema validation.

Phase 3: Agent Integration

Connect PRD output to Planner Agent

Implement message passing

Logging and tracing

Validation:

End-to-end workflow test.

9. Success Criteria
Functional

All PRDs follow schema

PRDs usable by downstream agents

API generates valid documents

Quality

Test coverage > 80%

No schema violations

Logging for all generation events

System Level

PRD becomes primary contract between agents

Enables autonomous task decomposition

10. Out of Scope

Code generation

UI generation

Deployment automation

QA testing

Данные функции реализуются другими агентами системы.

11. Boundaries
ALWAYS

Validate generated PRDs

Follow schema structure

Generate complete documentation

ASK FIRST

Modify PRD schema

Introduce new dependencies

Change agent communication format

NEVER

Skip validation

Generate incomplete PRDs

Produce unstructured output

12. Risks & Mitigations
Risk	Impact	Mitigation
Ambiguous user input	High	clarification prompts
PRD schema drift	Medium	strict validator
LLM hallucinations	Medium	rule-based validation
13. Future Considerations

Automatic PRD improvement loop

Versioned PRD documents

Integration with task planner agents

Automatic architecture generation

14. Validation Checklist

 All sections generated

 Schema validation passed

 PRD usable by Planner Agent

 API endpoint tested

 Test coverage > 80%
