# PROJECT.md — Project Configuration

## Tech Stack (template)

Fill this once you decide the implementation stack for your specific mini-products/websites.

- Language: `[TypeScript | Python | ...]`
- Runtime: `[Node.js | Python | ...]`
- Framework: `[Next.js | React | ...]`
- Database: `[PostgreSQL | SQLite | ...]`
- ORM / Query: `[Prisma | Drizzle | ... | none]`
- Test framework: `[Vitest | pytest | ...]`
- Linter: `[ESLint | Ruff | ...]`
- Type checker: `[tsc | mypy | ... | none]`
- Package manager: `[pnpm | npm | yarn | ...]`

## Commands (template)

Use the command set that matches your selected stack.

- Install: `[pnpm install]`
- Dev server: `[pnpm dev]`
- Build: `[pnpm build]`
- Test: `[pnpm test]`
- Lint: `[pnpm lint]`
- Typecheck: `[pnpm typecheck]`

## Validation Command (before commit)

Example (replace with your stack):

```bash
[pnpm test && pnpm typecheck && pnpm lint]
```

## Directory Conventions (recommended)

A common practical structure:

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

If your team uses a different structure, document it here.
