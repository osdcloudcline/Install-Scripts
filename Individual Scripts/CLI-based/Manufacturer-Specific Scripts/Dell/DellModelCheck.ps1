$PCModel = (Get-CimInstance -Class Win32_ComputerSystem).Model
$CPU = (Get-CimInstance -Class Win32_Processor).Manufacturer
$CPUName = (Get-CimInstance -Class Win32_Processor).Name

If($PCModel -like "*Alienware*"){
Write-Verbose "Downloading Alienware-related Dell software..." -Verbose
$Alienware = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Manufacturer-Specific%20Scripts/Dell/Files/Alienware/Alienware.ps1")
Invoke-Expression $($Alienware.Content)
}
ElseIf($PCModel -like "*Copilot*"){
Write-Verbose "Downloading Copilot + PC-related Dell Software..." -Verbose
$Copilot = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Manufacturer-Specific%20Scripts/Dell/Files/Copilot%20+%20PCs/Copilot.ps1")
Invoke-Expression $($Copilot.Content)
}
ElseIf($PCModel -like "*G-Series*"){
Write-Verbose "Downloading G-Series PC-related Dell Software..." -Verbose
$GSeries = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Manufacturer-Specific%20Scripts/Dell/Files/G-Series/G-Series.ps1")
Invoke-Expression $($GSeries.Content)
}
ElseIf($PCModel -like "*Inspiron*"){
Write-Verbose "Downloading Inspiron-related Dell Software..." -Verbose
$Inspiron = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Manufacturer-Specific%20Scripts/Dell/Files/Inspiron/Inspiron.ps1")
Invoke-Expression $($Inspiron.Content)
}
ElseIf($PCModel -like "*Latitude*"){
Write-Verbose "Downloading Latitude-related Dell Software..." -Verbose
$Latitude = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Manufacturer-Specific%20Scripts/Dell/Files/Latitude/Latitude.ps1")
Invoke-Expression $($Latitude.Content)
}
ElseIf($PCModel -like "*Precision Mobile Workstation*"){
Write-Verbose "Downloading Precision Mobile Workstation-related Dell Software..." -Verbose
$PrecisionMobileWorkstation = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Manufacturer-Specific%20Scripts/Dell/Files/Precision%20Mobile%20Workstations/PMW.ps1")
Invoke-Expression $($PrecisionMobileWorkstation.Content)
}
ElseIf($PCModel -like "*XPS*"){
Write-Verbose "Downloading XPS-related Dell Software..." -Verbose
$XPS = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Manufacturer-Specific%20Scripts/Dell/Files/XPS/XPS.ps1")
Invoke-Expression $($XPS.Content)
}
ElseIf($PCModel -like "*Optiplex*"){
Write-Verbose "Downloading Optiplex Micro Form Factor-related Dell Software..." -Verbose
$OptiplexMFF = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Manufacturer-Specific%20Scripts/Dell/Files/Optiplex%20-%20Micro%20Form%20Factor/Optiplex.ps1")
Invoke-Expression $($OptiplexMFF.Content)
}
