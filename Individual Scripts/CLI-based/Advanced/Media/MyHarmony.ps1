Start-Transcript -Path "C:\Logs\OSDCloud\Install\Advanced\Media\$env:computername-MyHarmony.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Logitech MyHarmony"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id Logitech.MyHarmony --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
