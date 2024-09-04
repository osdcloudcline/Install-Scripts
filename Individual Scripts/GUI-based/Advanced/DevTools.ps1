$DevToolsInstallLog = "C:\Logs\Installs\Software\Advanced\GUI\$env:computername-DevTools.log"

Start-Transcript -Path $DevToolsInstallLog

winget install --id Docker.DockerDesktop --source winget --force

winget install --id GitHub.GitHubDesktop --source winget --force

Stop-Transcript
