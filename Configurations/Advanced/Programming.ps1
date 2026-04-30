# Define the Advanced Programming Software using Hash Tables @{ }
$ADVProgramming = @(
   @{ Name = "AI Cursor Editor"; ID = "Anysphere.Cursor" },
   @{ Name = "VS Code for Windows"; ID = "Microsoft.VisualStudioCode" },
   @{ Name = "Microsoft Visual Studio 2026 Enterprise"; ID = "Microsoft.VisualStudio.Enterprise" }
)


# Process WinGet Items
foreach($App in $ADVProgramming){
    Write-Host "`nProcessing install for: $($App.Name)" -ForegroundColor Cyan
    # Added --silent and --accept-package-agreements for better automation
    winget install --id $($App.ID) --exact --silent --accept-package-agreements --accept-source-agreements --force --source winget
    Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}
