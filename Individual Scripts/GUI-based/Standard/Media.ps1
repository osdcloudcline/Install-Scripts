$MediaInstallLog = "C:\Logs\Installs\Software\Standard\GUI\$env:computername-Media.log"

Start-Transcript -Path $MediaInstallLog

winget install --id XBMCFoundation.Kodi --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id MoritzBunkus.MKVToolNix --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id MediaArea.MediaInfo.GUI --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id Logitech.MyHarmony --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id VideoLAN.VLC --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id Apple.iTunes --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
