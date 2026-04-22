# Define the Advanced Software Utilities Software using Hash Tables @{ }
$ADVSWUtils = @(
   @{ Name = "7-Zip"; ID = "7zip.7zip" }
   @{ Name = "CCleaner"; ID = "Piriform.CCleaner" }
   @{ Name = "DDU"; ID = "Wagnardsoft.DisplayDriverUninstaller" }
   @{ Name = "Glary Utilities"; ID = "Glarysoft.GlaryUtilities" }
   @{ Name = "Hardware Monitor Pro; ID = "Logitech.LGS" }
   @{ Name = "Microsoft Deployment Toolkit"; ID = "Microsoft.MouseandKeyboardCenter" }
   @{ Name = "Microsoft DaRT"; ID = "Microsoft.MouseandKeyboardCenter" }
   @{ Name = "Smart Defrag"; ID = "Microsoft.MouseandKeyboardCenter" }
   @{ Name = "Windows 11 ADK 26H1"; ID = "Microsoft.MouseandKeyboardCenter" }
   @{ Name = "Wise Registry Cleaner"; ID = "Microsoft.MouseandKeyboardCenter" }
)

# Process WinGet Items
foreach($App in $ADVSWUtils){
    Write-Host "`nProcessing install for: $($App.Name)" -ForegroundColor Cyan
    # Added --silent and --accept-package-agreements for better automation
    winget install --id $($App.ID) --exact --silent --accept-package-agreements --accept-source-agreements --force
    Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}
