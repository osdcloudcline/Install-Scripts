Start-Transcript -Path "C:\Logs\OSDCloud\Install\Standard\Utilities-Hardware\$env:computername-LogitechUnifyingSoftware.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Logitech Unifying Software"

Write-Host
Write-Verbose "Installing $app1..." -Verbose
winget install --id Logitech.UnifyingSoftware --exact --accept-source-agreements  --accept-package-agreements --force

Stop-Transcript
