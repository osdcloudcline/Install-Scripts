$ProductivityInstallLog = "C:\Logs\Installs\Software\Corporate\GUI\$env:computername-Productivity.log"

Start-Transcript -Path $ProductivityInstallLog

winget install --id Adobe.Acrobat.Reader.64-bit --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id Microsoft.Office --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
