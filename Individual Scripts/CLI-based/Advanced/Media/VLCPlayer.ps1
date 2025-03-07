Start-Transcript -Path "C:\Logs\OSDCloud\Install\Advanced\Media\$env:computername-VLCPlayer.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "VLC Media Player"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id VideoLAN.VLC --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
