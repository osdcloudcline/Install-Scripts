# Define the Advanced VDI/Remote Desktop Software using Hash Tables @{ }
$ADVVDIRemote = @(
   @{ Name = "AnyDesk"; ID = "AnyDesk.AnyDesk" }
   @{ Name = "Microsoft Remote Desktop"; ID = "Microsoft.RemoteDesktopClient" }
   
)

$ChocolateyVDIRemote = @(
   @{ Name = "VMWare-Omnissa Horizon Client"; ID = "omnissa-horizon-client" }
)

# Process WinGet Items
foreach($App in $ADVVDIRemote){
    Write-Host "`nProcessing install for: $($App.Name)" -ForegroundColor Cyan
    # Added --silent and --accept-package-agreements for better automation
    winget install --id $($App.ID) --exact --silent --accept-package-agreements --accept-source-agreements --force
    Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}

# Process Chocolatey Items
foreach($App in $ChocolateyVDIRemote){
    Write-Host "`nProcessing install for: $($App.Name)" -ForegroundColor Cyan
    # Added --silent and --accept-package-agreements for better automation
    choco install --id $($App.ID) -y
    Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}
