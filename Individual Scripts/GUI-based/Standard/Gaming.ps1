$GamingInstallLog = "C:\Logs\Installs\Software\Standard\GUI\$env:computername-Gaming.log"

Start-Transcript -Path $GamingInstallLog

winget install --id Valve.Steam --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
