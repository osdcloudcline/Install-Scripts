Start-Transcript -Path "C:\Logs\OSDCloud\Install\IT\File Transfer\$env:computername-PuTTY.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "PuTTy"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
winget install --id PuTTY.PuTTY --exact --accept-source-agreements --architecture x64  --accept-source-agreements --force

Stop-Transcript
