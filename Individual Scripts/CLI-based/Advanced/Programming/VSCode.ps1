Start-Transcript -Path "C:\Logs\OSDCloud\Install\Advanced\Programming\$env:computername-VSCode.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "VS Code"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id Microsoft.VisualStudioCode --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
