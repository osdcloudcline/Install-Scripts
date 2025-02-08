Start-Transcript -Path "C:\Logs\OSDCloud\Install\Advanced\Media\$env:computername-GIMP.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "GIMP"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id GIMP.GIMP --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
