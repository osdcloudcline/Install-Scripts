Start-Transcript -Path "C:\Logs\OSDCloud\Install\Standard\File Transfer\$env:computername-FileZilla.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "FileZilla"

Write-Host
Write-Host "Installing $app1..." -ForegroundColor Cyan
choco install filezilla  -y

Stop-Transcript
