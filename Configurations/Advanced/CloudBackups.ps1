# Define the Advanced Cloud Backups Software using Hash Tables @{ }
$ADVCloudBackups = @(
   @{ Name = "Dropbox"; ID = "Dropbox.Dropbox" }
   @{ Name = "Google Drive"; ID = "Google.GoogleDrive" } 
   @{ Name = "NextCloud Desktop Client"; ID = "Nextcloud.NextcloudDesktop" }
   @{ Name = "Microsoft OneDrive"; ID = "Microsoft.OneDrive" }
   @{ Name = "Apple iCloud"; ID = "Apple.iCloud" }
)



# Process WinGet Items
foreach($App in $ADVCloudBackups){
    Write-Host "`nProcessing install for: $($App.Name)" -ForegroundColor Cyan
    # Added --silent and --accept-package-agreements for better automation
    winget install --id $($App.ID) --exact --silent --accept-package-agreements --accept-source-agreements --force --source winget
    Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}

$UPBR = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/CLI-based/Advanced/Cloud%20Backups/UPBR.ps1")
Invoke-Expression $($UPBR.Content)
