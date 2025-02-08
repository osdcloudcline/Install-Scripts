Start-Transcript -Path "C:\Logs\OSDCloud\Install\Advanced\Utilities-Hardware\$env:computername-MSMouseKBCenter.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Microsoft Mouse and Keyboard Center"

Write-Host
Write-Verbose "Installing $app1..." -Verbose
winget install --id Microsoft.MouseandKeyboardCenter --exact --accept-source-agreements  --accept-package-agreements --force

Stop-Transcript
