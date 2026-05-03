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
 
 foreach($App in $DellApps){
 Write-Host "Dell System Detected. Processing Dell-specific tools..." -ForegroundColor Yellow

 }
)






}elseif($PCManufacturer -like "*HP*"){

$HPApps = @(
  @{Name= ""; ID="" }
)


Write-Host "HP System Detected. Processing HP-specific tools..." -ForegroundColor Yellow
