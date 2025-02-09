Start-Transcript -Path "C:\Logs\OSDCloud\Install\Client VDI\Utilities-Software\$env:computername-7Zip.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "7-Zip"

Write-Host
Write-Verbose "Installing $app1..." -Verbose
winget install --id 7zip.7zip --exact --accept-source-agreements --accept-source-agreements --force

Stop-Transcript
