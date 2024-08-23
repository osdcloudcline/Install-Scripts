Start-Transcript -Path "C:\Logs\Powershell\Install\Client VDI\Utilities-Software\$env:computername-CCleaner.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "CCleaner"

Write-Host
Write-Verbose "Installing $app1..." -Verbose
winget install --id Piriform.CCleaner --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
