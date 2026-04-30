# Define the Advanced Dev Tools Software using Hash Tables @{ }
$ADVDevTools = @(
   @{ Name = "Docker Desktop"; ID = "Docker.DockerDesktop" },
   @{ Name = "Git for Windows"; ID = "Git.Git" }, 
   @{ Name = "GitHub Desktop"; ID = "GitHub.GitHubDesktop" }
)

# Process WinGet Items
foreach($App in $ADVDevTools){
    Write-Host "`nProcessing install for: $($App.Name)" -ForegroundColor Cyan
    # Added --silent and --accept-package-agreements for better automation
    winget install --id $($App.ID) --exact --silent --accept-package-agreements --accept-source-agreements --force --source winget
    Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}
