$CloudBackupsInstallLog = "C:\Logs\Installs\Software\Corporate\GUI\$env:computername-CloudBackups.log"

Start-Transcript -Path $CloudBackupsInstallLog

winget install --id Dropbox.Dropbox --source winget --force

winget install --id Google.GoogleDrive --source winget --force

winget install --id Microsoft.OneDrive --source winget --force

Stop-Transcript
