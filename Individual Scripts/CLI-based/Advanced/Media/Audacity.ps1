Start-Transcript -Path "C:\Logs\Powershell\Install\Advanced\Media\$env:computername-Audacity.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Audacity"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id Audacity.Audacity --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
