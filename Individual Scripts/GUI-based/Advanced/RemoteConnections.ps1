$RemoteConnectionsInstallLog = "C:\Logs\Installs\Software\Advanced\GUI\$env:computername-RemoteConnections.log"

Start-Transcript -Path $RemoteConnectionsInstallLog

winget install --id AnyDeskSoftwareGmbH.AnyDesk --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id Microsoft.RemoteDesktopClient --exact --accept-source-agreements  --accept-source-agreements --force

choco install vmware-horizon-client -y

Stop-Transcript
