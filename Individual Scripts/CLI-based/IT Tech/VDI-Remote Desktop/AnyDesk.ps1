Start-Transcript -Path "C:\Logs\Powershell\Install\IT Tech\VDI\$env:computername-AnyDesk.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "AnyDesk"

Write-Host
Write-Host "Installing: $app1..."  -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue -ForegroundColor Cyan 
winget install --id AnyDeskSoftwareGmbH.AnyDesk --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
