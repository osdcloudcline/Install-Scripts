# Define the Advanced Hardware Utilities Software using Hash Tables @{ }
$ADVHWUtils = @(
   @{ Name = "Crucial Storage"; ID = "" }
   @{ Name = "Logitech Options"; ID = "" }
   @{ Name = "Logitech Unifying Software"; ID = "" }
   @{ Name = "Microsoft Keyboard and Mouse"; ID = "" }
   @{ Name = "Samsung Magician"; ID = "" }
   @{ Name = "Western Digital SSD"; ID = "" }
)


# Process WinGet Items
foreach($App in $ADVHWUtils){
    Write-Host "`nProcessing install for: $($App.Name)" -ForegroundColor Cyan
    # Added --silent and --accept-package-agreements for better automation
    winget install --id $($App.ID) --exact --silent --accept-package-agreements --accept-source-agreements --force
    Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}
