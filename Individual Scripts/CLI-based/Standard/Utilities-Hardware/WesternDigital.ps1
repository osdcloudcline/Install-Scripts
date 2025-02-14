Start-Transcript -Path "C:\Logs\OSDCloud\Install\Standard\Utilities-Hardware\$env:computername-WD-Dashboard.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Western Digital Dashboard"

Write-Host
Write-Verbose "Installing $app1..." -Verbose
winget install --id WesternDigital.Dashboard --exact --accept-source-agreements  --accept-package-agreements --force

Stop-Transcript
