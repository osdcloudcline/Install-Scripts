# Define the Advanced Cloud Backups Software using Hash Tables @{ }
$ADVCloudBackups = @(
   @{ Name = "Dropbox"; ID = "Dropbox.Dropbox" }
   @{ Name = "Google Drive"; ID = "Google.GoogleDrive" } 
   @{ Name = "NextCloud Desktop Client"; ID = "Nextcloud.NextcloudDesktop" }
   @{ Name = "Microsoft OneDrive"; ID = "Microsoft.OneDrive" }
   @{ Name = "Apple iCloud"; ID = "Apple.iCloud" }
)



# Process WinGet Items
foreach($App in $ADVBrowsers){
    Write-Host "`nProcessing install for: $($App.Name)" -ForegroundColor Cyan
    # Added --silent and --accept-package-agreements for better automation
    winget install --id $($App.ID) --exact --silent --accept-package-agreements --accept-source-agreements --force
    Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}

Import-Module -Name OSD -Force

