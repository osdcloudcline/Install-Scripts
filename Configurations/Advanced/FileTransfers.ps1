# Define the Advanced File Transfer Software using Hash Tables @{ }
$ADVFTPTools = @(
   @{ Name = "PuTTY"; ID = "PuTTY.PuTTY" },
   @{ Name = "WinSCP"; ID = "WinSCP.WinSCP" } 
   
)

# Define the Chocolatey Advanced File Transfer Software using Hash Tables @{ }
$ChocoAdvancedFTPTools = @(
   @{ Name = "FileZilla"; ID = "filezilla" }
   
)



# Process WinGet Items
foreach($App in $ADVFTPTools){
    Write-Host "`nProcessing install for: $($App.Name)" -ForegroundColor Cyan
    # Added --silent and --accept-package-agreements for better automation
    winget install --id $($App.ID) --exact --silent --accept-package-agreements --accept-source-agreements --force --source winget
    Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}

# Process Chocolatey Items
foreach($App in $ChocoAdvancedFTPTools){
    Write-Host "`nProcessing install for: $($App.Name)" -ForegroundColor Cyan
    Write-Host
    choco install --id $($App.ID) -y
    Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}
