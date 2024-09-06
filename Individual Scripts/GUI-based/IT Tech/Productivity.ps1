$ProductivityInstallLog = "C:\Logs\Installs\Software\IT\GUI\$env:computername-Productivity.log"

Start-Transcript -Path $ProductivityInstallLog

winget install --id Adobe.Acrobat.Reader.64-bit --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id 9WZDNCRD29V9 --source msstore

winget install --id Microsoft.Office --exact --accept-source-agreements  --accept-source-agreements --force

Stop-Transcript
