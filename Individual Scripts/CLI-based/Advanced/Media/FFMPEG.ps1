Start-Transcript -Path "C:\Logs\OSDCloud\Install\Advanced\Media\$env:computername-FFMPEG.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "FFMPEG for Audacity"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
choco install audacity-ffmpeg -y

Stop-Transcript
