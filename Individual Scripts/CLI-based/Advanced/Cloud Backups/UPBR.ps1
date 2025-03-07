Start-Transcript -Path "C:\Logs\OSDCloud\Install\Advanced\CloudBackups\$env:computername-UPBR.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "User Profile Backup and Restore"

Write-Host "Configuring OSD PowerShell Modules..." -ForegroundColor Green

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck -Verbose
Import-Module -Name OSD -Force

Write-Verbose "Processing: $app1..." -Verbose
Write-Host
Write-Host "Acquiring and Downloading $app5 from OSDCloudCline GitHub Repo..." -ForegroundColor Green

$UPBR = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/User%20Profile%20Backup%20Restore/UserProfileBackupRestore.exe"
$UPBRFilePath = "C:\downloads\UserProfileBackupRestore.exe"
$UPBRFilePathNewName = "C:\downloads\User Profile Backup and Restore.exe"
$UPBRIconURL = "https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Extra%20Files/User%20Profile%20Backup%20Restore/win12ico.ico"
$UPBRDir = "C:\downloads"
Save-WebFile -SourceUrl $UPBR -DestinationDirectory $UPBRDir
Save-WebFile -SourceUrl $UPBRIconURL -DestinationDirectory $UPBRDir
Rename-Item -Path $UPBRFilePath  -NewName $UPBRFilePathNewName
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\User Profile Backup and Restore.lnk")
$Shortcut.TargetPath = "C:\downloads\User Profile Backup and Restore.exe"
$Shortcut.Save()

Stop-Transcript
