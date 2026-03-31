param()

$ErrorActionPreference = "Stop"

$requiredFiles = @(
    "AGENTS.md",
    "docs/prd/CREATE-PRD.md",
    "docs/prd/PRD.md",
    "SKILLS.md"
)

$missing = @()
foreach ($file in $requiredFiles) {
    if (-not (Test-Path $file)) {
        $missing += $file
    }
}

if ($missing.Count -gt 0) {
    Write-Host "pre-commit: missing required files:" -ForegroundColor Red
    foreach ($m in $missing) {
        Write-Host " - $m" -ForegroundColor Red
    }
    exit 1
}

$prdPath = "docs/prd/PRD.md"
$prdText = Get-Content -Path $prdPath -Raw

$hasStory = $prdText -match "(?im)as a .*, i want .*, so that .*"
$hasCriterion = $prdText -match "(?im)^- \[ \] .+|^- \[x\] .+"

if (-not $hasStory) {
    Write-Host "pre-commit: PRD must include at least one user story in 'As a / I want / so that' format." -ForegroundColor Red
    exit 1
}

if (-not $hasCriterion) {
    Write-Host "pre-commit: PRD must include at least one acceptance criterion checkbox." -ForegroundColor Red
    exit 1
}

Write-Host "pre-commit: validation passed." -ForegroundColor Green
exit 0
