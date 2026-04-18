# Define the Advanced Gaming Software using Hash Tables @{ }
$ADVGaming = @(
   @{ Name = "Steam Online Gaming"; ID = "Valve.Steam" }
   
   
)


# Process WinGet Items
foreach($App in $ADVGaming){
    Write-Host "`nProcessing install for: $($App.Name)" -ForegroundColor Cyan
    # Added --silent and --accept-package-agreements for better automation
    winget install --id $($App.ID) --exact --silent --accept-package-agreements --accept-source-agreements --force
    Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}
