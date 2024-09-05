$FileTransferInstallLog = "C:\Logs\Installs\Software\Standard\GUI\$env:computername-FileTransfer.log"

Start-Transcript -Path $FileTransferInstallLog

choco install filezilla  -y

Stop-Transcript
