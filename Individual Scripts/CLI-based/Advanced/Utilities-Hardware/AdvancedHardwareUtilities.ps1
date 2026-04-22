# Define the Advanced Hardware Utilities Software using Hash Tables @{ }
$ADVHWUtils = @(
   @{ Name = "Crucial Storage"; ID = "Crucial.StorageExecutive" }
   @{ Name = "Logitech Options"; ID = "Logitech.Options" }
   @{ Name = "Logitech Unifying Software"; ID = "Logitech.UnifyingSoftware" }
   @{ Name = "Logitech G-Hub"; ID = "Logitech.GHUB" }
   @{ Name = "Logitech Gaming Software"; ID = "Logitech.LGS" }
   @{ Name = "Microsoft Keyboard and Mouse"; ID = "Microsoft.MouseandKeyboardCenter" }
)
$ADVChocoHWUtils = @(
   @{ Name = "Samsung Magician"; ID = "samsung-magician" }
   @{ Name = "Western Digital SSD"; ID = "choco install data-lifeguard-diagnostic --version=1.36" }
)


# Process WinGet Items
foreach($App in $ADVHWUtils){
    Write-Host "`nProcessing install for: $($App.Name)" -ForegroundColor Cyan
    # Added --silent and --accept-package-agreements for better automation
    winget install --id $($App.ID) --exact --silent --accept-package-agreements --accept-source-agreements --force
    Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}
