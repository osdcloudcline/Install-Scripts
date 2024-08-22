Start-Transcript -Path "C:\Logs\Powershell\Install\IT\Dev Tools\$env:computername-DockerDesktop.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Docker Desktop"

Write-Host
Write-Verbose "Installing $app1..." -Verbose
winget install --id Docker.DockerDesktop --exact --accept-source-agreements --accept-source-agreements --force

Stop-Transcript
