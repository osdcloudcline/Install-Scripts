Start-Transcript -Path "C:\Logs\OSDCloud\Install\Corporate\Browsers\$env:computername-Chrome.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Google Chrome for Enterprise"

Write-Verbose "Processing: $app1..." -Verbose
Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id Google.Chrome --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
