Start-Transcript -Path "C:\Logs\Powershell\Install\Standard\Utilities-Software\$env:computername-7Zip.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "7-Zip"

Write-Host
Write-Verbose "Installing $app1..." -Verbose
winget install --id 7zip.7zip --exact --accept-source-agreements --accept-source-agreements --force

Stop-Transcript
