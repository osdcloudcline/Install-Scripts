$RemoteConnectionsInstallLog = "C:\Logs\Installs\Software\Standard\GUI\$env:computername-RemoteConnections.log"

Start-Transcript -Path $RemoteConnectionsInstallLog

winget install --id AnyDeskSoftwareGmbH.AnyDesk --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
