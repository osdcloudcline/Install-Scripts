Start-Transcript -Path "C:\Logs\OSDCloud\Install\Corporate\Utilities-Software\$env:computername-WRC.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Wise Registry Cleaner"

Write-Host
Write-Verbose "Installing $app1..." -Verbose
winget install --id XPDLS1XBTXVPP4 --exact --accept-source-agreements --accept-source-agreements --force

Stop-Transcript
