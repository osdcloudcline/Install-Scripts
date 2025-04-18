Start-Transcript -Path "C:\Logs\OSDCloud\Install\Advanced\Media\$env:computername-Handbrake.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Handbrake"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id HandBrake.HandBrake --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
