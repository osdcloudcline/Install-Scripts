$ProductivityInstallLog = "C:\Logs\Installs\Software\Standard\GUI\$env:computername-Productivity.log"

Start-Transcript -Path $ProductivityInstallLog

winget install --id Adobe.Acrobat.Reader.64-bit --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id 9WZDNCRD29V9 --source msstore

Stop-Transcript
