Start-Transcript -Path "C:\Logs\OSDCloud\Install\IT\Dev Tools\$env:computername-GitHubDesktop.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "GitHub Desktop"

Write-Host
Write-Verbose "Installing $app1..." -Verbose
winget install --id GitHub.GitHubDesktop --exact --accept-source-agreements --accept-source-agreements --force

Stop-Transcript
