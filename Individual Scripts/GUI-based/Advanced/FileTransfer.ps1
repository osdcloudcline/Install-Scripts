$FileTransferInstallLog = "C:\Logs\Installs\Software\Advanced\GUI\$env:computername-FileTransfer.log"

Start-Transcript -Path $FileTransferInstallLog

choco install filezilla  -y
