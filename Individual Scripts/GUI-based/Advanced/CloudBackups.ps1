$CloudBackupsInstallLog = "C:\Logs\Installs\Software\Advanced\GUI\$env:computername-CloudBackups.log"

Start-Transcript -Path $CloudBackupsInstallLog

winget install --id Dropbox.Dropbox --source winget --force

winget install --id Google.GoogleDrive --source winget --force

winget install --id Nextcloud.NextcloudDesktop --source winget --force

winget install --id Microsoft.OneDrive --source winget --force

winget install --id Apple.iCloud --source winget --force

Stop-Transcript
