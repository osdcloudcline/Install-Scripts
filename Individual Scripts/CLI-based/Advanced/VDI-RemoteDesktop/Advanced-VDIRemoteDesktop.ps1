# Define the Advanced VDI/Remote Desktop Software using Hash Tables @{ }
$ADVVDIRemote = @(
   @{ Name = "AnyDesk"; ID = "AnyDesk.AnyDesk" }
   @{ Name = "Microsoft Remote Desktop"; ID = "Microsoft.RemoteDesktopClient" }
   @{ Name = "Microsoft Visual Studio 2026 Enterprise"; ID = "Microsoft.VisualStudio.Enterprise" }
)


# Process WinGet Items
foreach($App in $ADVVDIRemote){
    Write-Host "`nProcessing install for: $($App.Name)" -ForegroundColor Cyan
    # Added --silent and --accept-package-agreements for better automation
    winget install --id $($App.ID) --exact --silent --accept-package-agreements --accept-source-agreements --force
    Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}
