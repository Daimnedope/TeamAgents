param()

$ErrorActionPreference = "Stop"

$required = @(
    "docs/prd/CREATE-PRD.md",
    "docs/prd/PRD.md"
)

$missing = @()
foreach ($file in $required) {
    if (-not (Test-Path $file)) {
        $missing += $file
    }
}

if ($missing.Count -gt 0) {
    Write-Host "pre-prd-check: missing PRD files:" -ForegroundColor Red
    foreach ($m in $missing) {
        Write-Host " - $m" -ForegroundColor Red
    }
    exit 1
}

Write-Host "pre-prd-check: PRD structure is ready." -ForegroundColor Green
exit 0
