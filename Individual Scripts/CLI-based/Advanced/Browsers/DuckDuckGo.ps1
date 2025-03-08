Start-Transcript -Path "C:\Logs\OSDCloud\Install\Advanced\Browsers\$env:computername-DuckDuckGo.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "DuckDuckGo Web Browser"

Write-Verbose "Processing: $app1..." -Verbose
Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id DuckDuckGo.DesktopBrowser --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
