
# Define the Chocolatey Standard File Transfer Software using Hash Tables @{ }
$ChocoAdvancedFTPTools = @(
   @{ Name = "FileZilla"; ID = "filezilla" }
   
)

# Process Chocolatey Items
foreach($App in $ChocoAdvancedFTPTools){
    Write-Host "`nProcessing install for: $($App.Name)" -ForegroundColor Cyan
    Write-Host
    choco install --id $($App.ID) -y
    Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}
