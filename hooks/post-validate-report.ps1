param(
    [string]$Result = "VALID",
    [string]$Notes = "Validation completed."
)

$ErrorActionPreference = "Stop"

$reportDir = "hooks/reports"
if (-not (Test-Path $reportDir)) {
    New-Item -ItemType Directory -Path $reportDir | Out-Null
}

$timestamp = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
$path = Join-Path $reportDir "$timestamp.md"

$content = @"
# Validation Report

- Result: $Result
- Timestamp: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss")
- Notes: $Notes
"@

Set-Content -Path $path -Value $content
Write-Host "post-validate-report: report saved to $path" -ForegroundColor Green
exit 0
