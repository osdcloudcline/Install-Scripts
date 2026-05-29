$PCManufacturer = (Get-CimInstance -ClassName Win32_ComputerSystem).Manufacturer


If($PCManufacturer -like "*Dell*"){

$DellApps = @(
 @{Name="Dell Command | Update"; ID="Dell.CommandUpdate" },
 @{Name="Dell Command | Update for Windows Universal"; ID="Dell.CommandUpdate.Universal" },
 @{Name="Dell Optimizer"; ID="Dell.Optimizer" },
 @{Name="Dell System Update"; ID="Dell.SystemUpdate" },
 @{Name="Dell Command | Configure"; ID="Dell.CommandConfigure" },
 @{Name="Dell Display and Peripheral Manager"; ID="Dell.DisplayAndPeripheralManager" },
 @{Name="Dell Display Manager"; ID="Dell.DisplayManager" },
 @{Name="Dell Peripheral Manager"; ID="Dell.PeripheralManager" }
) 
 foreach($App in $DellApps){
 Write-Host "Dell System Detected. Processing Dell-specific tools..." -ForegroundColor Yellow
     winget install --id $($App.ID) --exact --silent --accept-package-agreements --accept-source-agreements --force --source winget
 Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
 }
)

}elseif($PCManufacturer -like "*HP*"){

$HPApps = @(
  @{Name= ""; ID="" }
)

foreach($App in $HPApps){
Write-Host "HP System Detected. Processing HP-specific tools..." -ForegroundColor Yellow
      winget install --id $($App.ID) --exact --silent --accept-package-agreements --accept-source-agreements --force --source winget
Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}
}elseif($PCManufacturer -like "*ASUS*"){

$ASUSApps = @(
  @{Name= ""; ID="" }
)

foreach($App in $ASUSApps){
Write-Host "HP System Detected. Processing HP-specific tools..." -ForegroundColor Yellow
      winget install --id $($App.ID) --exact --silent --accept-package-agreements --accept-source-agreements --force --source winget
Write-Host "Completed: $($App.Name) install`n" -ForegroundColor Green
}
}
