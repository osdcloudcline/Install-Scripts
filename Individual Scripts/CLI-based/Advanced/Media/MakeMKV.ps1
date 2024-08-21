Start-Transcript -Path "C:\Logs\Powershell\Install\Advanced\Media\$env:computername-MakeMKV.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "MakeMKV"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id GuinpinSoft.MakeMKV --exact --accept-source-agreements  --accept-source-agreements --force


Stop-Transcript
