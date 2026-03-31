param()

$ErrorActionPreference = "Stop"

if (-not (Test-Path ".git")) {
    Write-Host "install-hooks: .git folder not found. Run in repository root." -ForegroundColor Red
    exit 1
}

Copy-Item "hooks/pre-commit.ps1" ".git/hooks/pre-commit.ps1" -Force

$launcher = @"
#!/usr/bin/env pwsh
pwsh -NoProfile -ExecutionPolicy Bypass -File .git/hooks/pre-commit.ps1
"@

Set-Content ".git/hooks/pre-commit" $launcher

Write-Host "install-hooks: pre-commit hook installed." -ForegroundColor Green
Write-Host "Optional scripts available in hooks/: pre-prd-check.ps1, post-validate-report.ps1"
exit 0
