# Define the Advanced Browsers Software using Hash Tables @{ }
$ADVBrowsers = @(
   @{ Name = "Google Chrome"; ID = "Google.Chrome" }
   @{ Name = "Mozilla Firefox"; ID = "Mozilla.Firefox" } 
   @{ Name = "Duck Duck Go"; ID = "DuckDuckGo.DesktopBrowser" }
)



# Process WinGet Items
foreach($App in $ADVBrowsers){
    Write-Host "`nProcessing install for: $($App.Name)" -ForegroundColor Cyan
    # Added --silent and --accept-package-agreements for better automation
    winget install --id $($App.ID) --exact --silent --accept-package-agreements --accept-source-agreements --force
    Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}
