Start-Transcript -Path "C:\Logs\OSDCloud\Install\Advanced\Utilities-Hardware\$env:computername-LogitechOpitions.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Logitech Options"

Write-Host
Write-Verbose "Installing $app1..." -Verbose
winget install --id Logitech.Options --exact --accept-source-agreements  --accept-package-agreements --force

Stop-Transcript
