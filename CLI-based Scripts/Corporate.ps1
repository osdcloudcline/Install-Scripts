Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '              CORPORATE SOFTWARE CONFIGURATION                   ' -ForegroundColor DarkBlue -BackgroundColor White 
Write-Host '          The following software will be installed:              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '  - Web Browsers: Google Chrome                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Cloud Backup: One Drive, DropBox,                            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Cloud Backup: Google Drive                                   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: VLC Player and MediaInfo                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Productivity: Microsoft Office 2021 LTSC                     ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Productivity: Adobe Reader                                   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: Microsoft Remote Desktop,            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: VMWare Horizon Client,               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: AnyDesk,                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: Microsoft 365 VDI                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: DDU, Driver Booster 11,  CCleaner                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Smart Defrag, V2V Converter                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Windows 11 SDK, ADK, WinPE Add-On                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Security: DOWNLOAD ONLY - MalwareBytes                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '    Uninstallation of software will be available                 ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '    after script completes                                       ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White
pause


Write-Host "Applying configuration to $env:computername..." -ForegroundColor DarkBlue -BackgroundColor White

Write-Host "Processing: Mandatory System Configuration Pre-Requisites..." -ForegroundColor Cyan

Write-Verbose "Step 1 - PowerShell Package Providers..." -Verbose
Write-Host

$PSProviders = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Package%20Providers/Install.ps1")
Invoke-Expression $($PSProviders.Content)

Write-Verbose "Step 2 - PowerShell 5.1 Modules..." -Verbose
Write-Host

$PS5Modules = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Version%205.1/Install.ps1")
Invoke-Expression $($PS5Modules.Content)

Write-Verbose "Step 3 - PowerShell 7.x Modules..." -Verbose 
Write-Host

$PS7Modules = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Version%207.x/Install.ps1")
pwsh Invoke-Expression $($PS7Modules.Content)

Write-Verbose "Step 4 - Merging Registry Entries..." -Verbose
Write-Host

$ClientRegistry = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/ClientRegistry.ps1")
Invoke-Expression $($ClientRegistry.Content)

Write-Verbose "Step 5 - Client Operating System RSAT Tools..." -Verbose
Write-Host

$ClientRSAT = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/PostInstall/Client%20OS%20Roles%20/InstallClientRSAT.ps1")
Invoke-Expression $($ClientRSAT.Content)

Write-Verbose "Step 6 - Mandatory OS Pre-Requirements..." -Verbose
Write-Host

$OS = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/SYSTEM/OS-Mandated%20Software/SYSTEM.ps1")
Invoke-Expression $($OS.Content)

$OSThemePacks = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/SYSTEM/OS-Mandated%20Software/OS-ThemePacks.ps1")
Invoke-Expression $($OSThemePacks.Content)

$CustomOSThemePacks = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/SYSTEM/OS-Mandated%20Software/Custom-OS-ThemePacks.ps1")
Invoke-Expression $($CustomOSThemePacks.Content)

Write-Host "Processing install for: Web Browsers..." -ForegroundColor DarkBlue -BackgroundColor White

$Chrome = Invoke-WebRequest ("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/Browsers/Chrome.ps1")
Invoke-Expression $($Chrome.Content)


Write-Host "Processing install for: Cloud Backup software..." -ForegroundColor DarkBlue -BackgroundColor White

$DropBox = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/Cloud%20Backups/DropBox.ps1")
Invoke-Expression $($DropBox.Content)

$GDrive = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/Cloud%20Backups/GDrive.ps1")
Invoke-Expression $($GDrive.Content)

$OneDrive = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/Cloud%20Backups/OneDrive.ps1")
Invoke-Expression $($OneDrive.Content)

$UPBR = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/Cloud%20Backups/UPBR.ps1")
Invoke-Expression $($UPBR.Content)


Write-Host "Processing install for: Media software..." -ForegroundColor DarkBlue -BackgroundColor White

$MediaInfo = Invoke-WeBRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/Media/MediaInfo.ps1")
Invoke-Expression $($MediaInfo.Content)

$VLCPlayer = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/Media/VLCPlayer.ps1")
Invoke-Expression $($VLCPlayer.Content 


Write-Host "Processing install for: Productivity software..." -ForegroundColor DarkBlue -BackgroundColor White

$AdobeReaderDC = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/Productivity/AcrobatReaderDC.ps1")
Invoke-Expression $($AdobeReaderDC.Content)

$MSO365 = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/Productivity/MSO365.ps1")
Invoke-Expression $($MSO365.Content)

$Office2024 = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/CLI-based/Corporate/Productivity/Office2024.ps1")
Invoke-Expression $($Office2021.Content)

$Office365AppsENT = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/Productivity/Office365AppsEnterprise.ps1")
Invoke-Expression $($Office365AppsENT.Content)


Write-Host "Processing install for: Vitual Desktop Interface software..." -ForegroundColor DarkBlue -BackgroundColor White

$AnyDesk = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/VDI-Remote%20Desktop/AnyDesk.ps1")
Invoke-Expression $($AnyDesk.Content)

$MSRemoteDesktop = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/VDI-Remote%20Desktop/MSRemoteDesktop.ps1")
Invoke-Expression $($MSRemoteDesktop.Content)

$VMWareHorizon = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/VDI-Remote%20Desktop/VMWareHorizon.ps1")
Invoke-Expression $($VMWareHorizon.Content)


Write-Host "Processing install for: System Utilities - Hardware..." -ForegroundColor DarkBlue -BackgroundColor White

$LogitechOptions = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/Utilities-Hardware/LogitechOptions.ps1")
Invoke-Expression $($LogitechOptions.Content)

$LogitechUnifying = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/Utilities-Hardware/LogitechUnifying.ps1")
Invoke-Expression $($LogitechUnifying.Content)

$SamsungMagician = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/Utilities-Hardware/SamsungMagician.ps1")
Invoke-Expression $($SamsungMagician.Content)

$CrucialStorage = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/Utilities-Hardware/CrucialStorage.ps1")
Invoke-Expression $($CrucialStorage.Content)

$MSMouseKB = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/Utilities-Hardware/MSMouseKeyboard.ps1")
Invoke-Expression $($MSMouseKB.Content)


Write-Host "Processing install for: System Utilities - Software..." -ForegroundColor DarkBlue -BackgroundColor White

$7Zip = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/Utilities-Software/7Zip.ps1")
Invoke-Expression $($7Zip.Content)

$CCleaner = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/Utilities-Software/CCleaner.ps1")
Invoke-Expression $($CCleaner.Content)

$DDU = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/Utilities-Software/DDU.ps1")
Invoke-Expression $($DDU.Content)

$SmartDefrag = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/Utilities-Software/SmartDefrag.ps1")
Invoke-Expression $($SmartDefrag.Content)

$OSKits = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/Utilities-Software/Win11-22H2-OSKits.ps1")
Invoke-Expression $($OSKits.Content)

$WiseRegistryCleaner = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/Utilities-Software/WiseRegistryCleaner.ps1")
Invoke-Expression $($WiseRegistryCleaner.Content)


Write-Host "Processing downloads for: Security software..." -ForegroundColor DarkBlue -BackgroundColor White

$MBAM = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Corporate/Security/Anti-Malware/MalwareBytes.ps1")
Invoke-Expression $($MBAM.Content)

Write-Host "Processing install for: Windows Store Apps..." -ForegroundColor DarkBlue -BackgroundColor White

$BusinessStoreApps = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Windows%20Store%20Apps/Business-related/BusinessStoreApps.ps1")
Invoke-Expression $($BusinessStoreApps.Content)

$DevToolsStoreApps = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Windows%20Store%20Apps/Dev%20Tools-related/DevToolsStoreApps.ps1")
Invoke-Expression $($DevToolsStoreApps.Content)

$NetworkToolsStoreApps = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Windows%20Store%20Apps/Network%20Tools-related/NetworkToolsStoreApps.ps1")
Invoke-Expression $($NetworkToolsStoreApps.Content)

$OSStoreApps = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Windows%20Store%20Apps/OS%20SYSTEM-related/OSStoreApps.ps1")
Invoke-Expression $($OSStoreApps.Content)

Write-Host "Detecting PC CPU to determine related file downloads..." -ForegroundColor DarkBlue -BackgroundColor White

$CPU = (Get-CimInstance -Class Win32_Processor).Manufacturer
$CPUName = (Get-CimInstance -Class Win32_Processor).Name

If($CPU -eq "AuthenticAMD"){
Write-Host      "This PC has an $CPU $CPUName" -ForegroundColor DarkBlue -BackgroundColor White
$AMD = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Manufacturer-Specific%20Scripts/AMD/AMD.ps1")
Invoke-Expression $($AMD.Content)
}
ElseIf($CPU -eq "GenuineIntel"){
Write-Host      "This PC has an $CPU $CPUName" -ForegroundColor DarkBlue -BackgroundColor White
$Intel = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Manufacturer-Specific%20Scripts/Intel/Intel.ps1")
Invoke-Expression $($Intel.Content)
}


Write-Verbose "Detecting PC Manufacturer..." -Verbose

$PCManufacturer = (Get-CimInstance -Class Win32_ComputerSystem).Manufacturer
If($PCManufacturer -like "*Dell*"){
Write-Host "Installing Dell Software...." -ForegroundColor Cyan
$Dell = Invoke-WebRequest("")
Invoke-Expression $($Dell.Content)
}
ElseIf($PCManufacturer -like "*ASUS*"){
Write-Host "Installing ASUS Software...." -ForegroundColor Cyan
$ASUS = Invoke-WebRequest("")
Invoke-Expression $($ASUS.Content)
}
ElseIf($PCManufacturer -like "*Acer*"){
Write-Host "Installing Acer Software...." -ForegroundColor Cyan
$Acer = Invoke-WebRequest("")
Invoke-Expression $($Acer.Content)
}
ElseIf($PCManufacturer -like "*Lenovo*"){
Write-Host "Installing Lenovo Software...." -ForegroundColor Cyan
$Lenovo = Invoke-WebRequest("")
Invoke-Expression $($Lenovo.Content)
}
ElseIf($PCManufacturer -like "*HP*"){
Write-Host "Installing HP Software...." -ForegroundColor Cyan
$HP = Invoke-WebRequest("")
Invoke-Expression $($HP.Content)
ElseIf($PCManufacturer -like "*VMWare, Inc.*"){
Write-Host "This PC is a virtual machine operating in a VDI environment. No OEM Software is needed" -ForegroundColor Cyan
}

$Uninstall = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Uninstall/UninstallMainMenu.ps1")
Invoke-Expression $($Uninstall.Content)
