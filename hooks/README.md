# Hooks

This folder documents hook rules used to keep quality stable.

## Hook Types

- **Pre-creation hook**: checks that PRD exists before implementation starts.
- **Pre-commit hook**: checks markdown structure and required files.
- **Post-generation hook**: validates that outputs include acceptance criteria mapping.

## Minimal Hook Policy

- Block commits if required files are missing:
  - `AGENTS.md`
  - `docs/prd/CREATE-PRD.md`
  - `docs/prd/PRD.md`
  - `SKILLS.md`
- Warn when acceptance criteria are absent.
- Log hook results in a short human-readable format.

## Pre-commit Script (PowerShell)

Use `hooks/pre-commit.ps1` as your local git pre-commit hook.

### Setup (Windows PowerShell)

1. Open project root in PowerShell.
2. Run:

```powershell
Copy-Item "hooks/pre-commit.ps1" ".git/hooks/pre-commit.ps1" -Force
Set-Content ".git/hooks/pre-commit" "#!/usr/bin/env pwsh`npwsh -NoProfile -ExecutionPolicy Bypass -File .git/hooks/pre-commit.ps1"
```

3. Make sure `pwsh` is available in PATH.

Now each commit runs required-file and PRD checks automatically.

## Additional Hook Scripts

- `hooks/pre-prd-check.ps1` - validates that PRD files exist before PRD generation/update flow.
- `hooks/post-validate-report.ps1` - writes markdown validation reports to `hooks/reports/`.
- `hooks/install-hooks.ps1` - installs the pre-commit hook automatically into `.git/hooks/`.

### Quick Install

```powershell
pwsh -File hooks/install-hooks.ps1
```
