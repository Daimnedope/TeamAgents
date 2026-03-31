# PROJECT.md — Project Configuration

## Tech Stack (шаблон)

Заполни, когда определитесь с реализацией конкретных мини-продуктов/сайтов.

- Language: `[TypeScript | Python | ...]`
- Runtime: `[Node.js | Python | ...]`
- Framework: `[Next.js | React | ...]`
- Database: `[PostgreSQL | SQLite | ...]`
- ORM / Query: `[Prisma | Drizzle | ... | none]`
- Test framework: `[Vitest | pytest | ...]`
- Linter: `[ESLint | Ruff | ...]`
- Type checker: `[tsc | mypy | ... | none]`
- Package manager: `[pnpm | npm | yarn | ...]`

## Commands (шаблон)

Используй подходящий набор команд под выбранный стек.

- Install: `[pnpm install]`
- Dev server: `[pnpm dev]`
- Build: `[pnpm build]`
- Test: `[pnpm test]`
- Lint: `[pnpm lint]`
- Typecheck: `[pnpm typecheck]`

## Validation Command (перед коммитом)

Пример (замени под свой стек):

```bash
[pnpm test && pnpm typecheck && pnpm lint]
```

## Directory Conventions (рекомендации)

Обычно удобно держать:

```
src/
  ui/
  api/
  services/
  utils/
docs/
  prd/
  architecture/
commands/
hooks/
```

Если у вас другая структура — зафиксируй её тут.
