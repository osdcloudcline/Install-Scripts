$MediaInstallLog = "C:\Logs\Installs\Software\Honeypot\GUI\$env:computername-Media.log"

Start-Transcript -Path $MediaInstallLog

winget install --id MediaArea.MediaInfo.GUI --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id VideoLAN.VLC --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
