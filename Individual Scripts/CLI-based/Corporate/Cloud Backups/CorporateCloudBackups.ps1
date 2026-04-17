# Define the Corporate Cloud Backups Software using Hash Tables @{ }
$CorporateCloudBackups = @(
   @{ Name = "Dropbox"; ID = "Dropbox.Dropbox" }
   @{ Name = "Google Drive"; ID = "Google.GoogleDrive" } 
   @{ Name = "NextCloud Desktop Client"; ID = "Nextcloud.NextcloudDesktop" }
   @{ Name = "Microsoft OneDrive"; ID = "Microsoft.OneDrive" }
)



# Process WinGet Items
foreach($App in $CorporateCloudBackups){
    Write-Host "`nProcessing install for: $($App.Name)" -ForegroundColor Cyan
    # Added --silent and --accept-package-agreements for better automation
    winget install --id $($App.ID) --exact --silent --accept-package-agreements --accept-source-agreements --force
    Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}

$UPBR = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/CLI-based/Advanced/Cloud%20Backups/UPBR.ps1")
Invoke-Expression $($UPBR.Content)
