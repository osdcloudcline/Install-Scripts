Start-Transcript -Path "C:\Logs\OSDCloud\Install\Advanced\Browsers\$env:computername-Firefox.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Mozilla Firefox"

Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id Mozilla.Firefox --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
