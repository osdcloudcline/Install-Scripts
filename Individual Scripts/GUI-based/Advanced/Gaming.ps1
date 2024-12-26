$GamingInstallLog = "C:\Logs\Installs\Software\Advanced\GUI\$env:computername-Gaming.log"

Start-Transcript -Path $GamingInstallLog

winget install --id Valve.Steam --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id Logitech.GHUB --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id Logitech.LGS  --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
