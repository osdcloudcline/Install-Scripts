Start-Transcript -Path "C:\Logs\OSDCloud\Install\Samsung\Utilities-Hardware\$env:computername-SamsungMagician.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Samsung Magician"

Write-Host
Write-Verbose "Installing $app1..." -Verbose
winget install --id Samsung.SamsungMagician --exact --accept-source-agreements  --accept-package-agreements --force

Stop-Transcript
