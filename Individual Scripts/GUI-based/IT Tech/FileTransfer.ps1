$FileTransferInstallLog = "C:\Logs\Installs\Software\IT\GUI\$env:computername-FileTransfer.log"

Start-Transcript -Path $FileTransferInstallLog

choco install filezilla  -y

winget install --id PuTTY.PuTTY --exact --accept-source-agreements --architecture x64  --accept-source-agreements --force

winget install --id WinSCP.WinSCP --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
