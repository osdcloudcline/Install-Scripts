Start-Transcript -Path "C:\Logs\OSDCloud\Install\Advanced\Media\$env:computername-PowerISO.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "PowerISO"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id PowerSoftware.PowerISO --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
