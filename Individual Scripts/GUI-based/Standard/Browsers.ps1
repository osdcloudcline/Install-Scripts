$BrowsersInstallLog = "C:\Logs\Installs\Software\Standard\GUI\$env:computername-Browsers.log"

Start-Transcript -Path $BrowsersInstallLog

winget install --id Google.Chrome --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id Mozilla.Firefox --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id DuckDuckGo.DesktopBrowser --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript