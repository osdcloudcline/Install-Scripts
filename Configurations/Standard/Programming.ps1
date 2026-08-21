# Define the Advanced Programming Software using Hash Tables @{ }
$STDProgramming = @(
   @{ Name = "VS Code for Windows"; ID = "Microsoft.VisualStudioCode" }
)


# Process WinGet Items
foreach($App in $STDProgramming){
    Write-Host "`nProcessing install for: $($App.Name)" -ForegroundColor Cyan
    # Added --silent and --accept-package-agreements for better automation
    winget install --id $($App.ID) --exact --silent --accept-package-agreements --accept-source-agreements --force --source winget
    Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}
