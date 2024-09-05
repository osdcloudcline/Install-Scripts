$FileTransferInstallLog = "C:\Logs\Installs\Software\Advanced\GUI\$env:computername-FileTransfer.log"

Start-Transcript -Path $FileTransferInstallLog

choco install filezilla  -y

winget install --id PuTTY.PuTTY --exact --accept-source-agreements --architecture x64  --accept-source-agreements --force

