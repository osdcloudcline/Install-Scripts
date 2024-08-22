Start-Transcript -Path "C:\Logs\Powershell\Install\Corporate\Utilities-Hardware\$env:computername-CrucialStorage.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Crucial Storage Executive"

Write-Host
Write-Verbose "Installing $app1..." -Verbose
winget install --id Crucial.StorageExecutive --exact --accept-source-agreements  --accept-package-agreements --force

Stop-Transcript
