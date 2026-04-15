# Define the Corporate IT Configured Browsers Software using Hash Tables @{ }
$CORPBrowsers = @(
   @{ Name = "Google Chrome"; ID = "Google.Chrome" }

# Process WinGet Items
foreach($App in $CORPBrowsers){
    Write-Host "`nProcessing install for: $($App.Name)" -ForegroundColor Cyan
    # Added --silent and --accept-package-agreements for better automation
    winget install --id $($App.ID) --exact --silent --accept-package-agreements --accept-source-agreements --force
    Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}
