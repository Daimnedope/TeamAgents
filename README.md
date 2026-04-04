# Team Agents

Instruction system for building educational mini-products in Cursor, together with Claude Code
subagents, reusable skills, and automation hooks.

## What is in this repository

| Area | Location | Role |
|------|----------|------|
| Claude Code entrypoint | `CLAUDE.md` | Global rules and subagent map |
| Project facts & commands | `PROJECT.md` | Stack, scripts, directory layout (fill per product) |
| Subagent definitions | `.claude/agents/` | Specialized roles for Claude Code |
| Executable skills (Claude) | `.claude/skills/` | Skill folders with `SKILL.md` |
| Hooks (Claude Code) | `.claude/hooks/` | Bash hooks for checks and telemetry |
| Study roles | `AGENTS.md`, `Agent.md` | Human-readable roles for coursework |
| PRD flow | `docs/prd/` | Create PRD, template PRD, example |
| Architecture notes | `docs/architecture/` | Architecture template |
| Shared templates | `docs/templates/` | PRD/context templates, eval JSON |
| Session state | `docs/state/` | `STATE.md` for ongoing work |
| RCA outputs | `docs/rca/` | Root-cause artifacts (folder reserved) |
| Cursor commands | `commands/` | Repeatable workflow markdown |
| Skill cards (study) | `SKILLS/` + `SKILLS.md` | Short cards aligned with the course |
| Hooks (Windows) | `hooks/` | PowerShell hooks and installer |

## Suggested reading order

1. `AGENTS.md`
2. `docs/prd/CREATE-PRD.md`
3. `docs/prd/PRD.md`
4. `PROJECT.md`
5. `docs/prd/PRD-example-edu-mini-product.md` (example)
6. `CLAUDE.md` (when using Claude Code)
7. `commands/README.md`
8. `SKILLS.md`
9. `hooks/README.md`
10. `.claude/reference/README.md` (Claude Code reference notes)

## Goal

Provide a repeatable path from idea to a small shipped product: clear steps, shared conventions,
and checks that keep quality visible.
