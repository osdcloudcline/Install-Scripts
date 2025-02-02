Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '              ADVANCED SOFTWARE CONFIGURATION                    ' -ForegroundColor DarkBlue -BackgroundColor White 
Write-Host '          The following software will be installed:              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '  - Web Browsers: Google Chrome and Mozilla Firefox              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Cloud Backup: One Drive, DropBox,                            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Cloud Backup: Google Drive and NextCloud Client              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - File Transfer: Filezilla, PuTTY and WinSCP                   ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Gaming: Steam Client                                         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: VLC Player, MediaInfo, MKVToolnix, iTunes,            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: MakeMKV, Handbrake, PowerISO, Audacity, FFMPEG        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: Logitech MyHarmony, GIMP, Kodi,                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Media: HD Video Converter Factory Pro, DVDFab                ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Productivity: Microsoft Office 2021 LTSC                     ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Productivity: Adobe Master Collection                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Programming: VS Code, AI Code Editor,                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Programming: Microsoft Visual Studio Enterprise 2022         ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: Microsoft Remote Desktop,            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: VMWare Horizon Client,               ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: AnyDesk,                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - VDI/Remote Connections: Microsoft 365 VDI                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Virtualization: VMWare Workstation Pro                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: 7-Zip, CCleaner, DDU                              ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Logitech Options, Logitech Unifying Software      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Samsung Magician, Crucial Storage Executive       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Smart Defrag, Wise Registry Cleaner, Rufus        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Utilities: Windows 11 SDK, ADK, WinPE Add-On                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - CUSTOM Utilities: Installed based on PC Name                 ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Security: DOWNLOAD ONLY - MalwareBytes, Norton360            ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White 
Write-Host '    Uninstallation of software will be available                 ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '    after script completes                                       ' -ForegroundColor DarkRed -BackgroundColor White
Write-Host '                                                                 ' -BackgroundColor White
pause


Write-Verbose "Step 1 - PowerShell Package Providers..." -Verbose

$PSProviders = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Package%20Providers/Install.ps1")
Invoke-Expression $($PSProviders.Content)

Write-Verbose "Step 2 - PowerShell 5.1 Modules..." -Verbose

$PS5Modules = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Version%205.1/Install.ps1")
Invoke-Expression $($PS5Modules.Content)

Write-Verbose "Step 3 - PowerShell 7.x Modules..." -Verbose 

$PS7Modules = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/PowerShell%20Modules/Version%207.x/Install.ps1")
pwsh Invoke-Expression $($PS7Modules.Content)

Write-Verbose "Step 4 - Merging Registry Entries..." -Verbose

$ClientRegistry = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Registry%20Modifications/ClientRegistry.ps1")
Invoke-Expression $($ClientRegistry.Content)

Write-Verbose "Step 5 - Client Operating System RSAT Tools..." -Verbose

$ClientRSAT = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/PostInstall/Client%20OS%20Roles%20/InstallClientRSAT.ps1")
Invoke-Expression $($ClientRSAT.Content)

Write-Verbose "Step 6 - Mandatory OS Pre-Requirements..." -Verbose

$OS = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/SYSTEM/OS-Mandated%20Software/SYSTEM.ps1")
Invoke-Expression $($OS.Content)

$OSThemePacks = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/SYSTEM/OS-Mandated%20Software/OS-ThemePacks.ps1")
Invoke-Expression $($OSThemePacks.Content)

$CustomOSThemePacks = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/SYSTEM/OS-Mandated%20Software/Custom-OS-ThemePacks.ps1")
Invoke-Expression $($CustomOSThemePacks.Content)

Write-Host "Processing install for: Web Browsers..." -ForegroundColor DarkBlue -BackgroundColor White

$Chrome = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Browsers/Chrome.ps1")
Invoke-Expression $($Chrome.Content)

$Firefox = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Browsers/Firefox.ps1")
Invoke-Expression $($Firefox.Content)


Write-Host "Processing install for: Cloud Backup software..." -ForegroundColor DarkBlue -BackgroundColor White

$DropBox = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Cloud%20Backups/DropBox.ps1")
Invoke-Expression $($DropBox.Content)

$GDrive = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Cloud%20Backups/GDrive.ps1")
Invoke-Expression $($GDrive.Content)

$NextCloudClient = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Cloud%20Backups/NextCloudClient.ps1")
Invoke-Expression $($NextCloudClient.Content)

$OneDrive = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Cloud%20Backups/OneDrive.ps1")
Invoke-Expression $($OneDrive.Content)

$UPBR = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Cloud%20Backups/UPBR.ps1")
Invoke-Expression $($UPBR.Content)

$iCloud = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Cloud%20Backups/iCloud.ps1")
Invoke-Expression $($iCloud.Content)


Write-Host "Processing install for: Dev Tools software..." -ForegroundColor DarkBlue -BackgroundColor White

$DockerDesktop = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Dev%20Tools/DockerDesktop.ps1")
Invoke-Expression $($DockerDesktop.Content)

$GitHubDesktop = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Dev%20Tools/GitHubDesktop.ps1")
Invoke-Expression $($GitHubDesktop.Content)


Write-Host "Processing install for: File Transfer software..." -ForegroundColor DarkBlue -BackgroundColor White

$FileZilla = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/File%20Transfer/FileZilla.ps1")
Invoke-Expression $($FileZilla.Content)

$PuTTY = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/File%20Transfer/PuTTY.ps1")
Invoke-Expression $($PuTTY.Content)

$WinSCP = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/File%20Transfer/WinSCP.ps1")
Invoke-Expression $($WinSCP.Content)


Write-Host "Processing install for: Gaming software..." -ForegroundColor DarkBlue -BackgroundColor White

$Steam = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Gaming/Steam.ps1")
Invoke-Expression $($Steam.Content)


Write-Host "Processing install for: Media software..." -ForegroundColor DarkBlue -BackgroundColor White

$Audacity = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Media/Audacity.ps1")
Invoke-Expression $($Audacity.Content)

$FFMPEG = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Media/FFMPEG.ps1")
Invoke-Expression $($FFMPEG.Content)

$GIMP = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Media/GIMP.ps1")
Invoke-Expression $($GIMP.Content)

$HDVideo = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Media/HDVideoConverterPro.ps1")
Invoke-Expression $($HDVideo.Content)

$Handbrake = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Media/Handbrake.ps1")
Invoke-Expression $($Handbrake.Content)

$Kodi = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Media/Kodi.ps1")
Invoke-Expression $($Kodi.Content)

$MKVToolNix = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Media/MKVToolNix.ps1")
Invoke-Expression $($MKVToolNix.Content)

$MakeMKV = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Media/MakeMKV.ps1")
Invoke-Expression $($MakeMKV.Content)

$MediaInfo = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Media/MediaInfo.ps1")
Invoke-Expression $($MediaInfo.Content)

$MyHarmony = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Media/MyHarmony.ps1")
Invoke-Expression $($MyHarmony.Content)

$PowerISO = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Media/PowerISO.ps1")
Invoke-Expression $($PowerISO.Content)

$VLCPlayer = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Media/VLCPlayer.ps1")
Invoke-Expression $($VLCPlayer.Content)

$iTunes = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Media/iTunes.ps1")
Invoke-Expression $($iTunes.Content)


Write-Host "Processing install for: Productivity software..." -ForegroundColor DarkBlue -BackgroundColor White

$AcrobatReaderDC = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Productivity/AcrobatReaderDC.ps1")
Invoke-Expression $($AcrobatReaderDC.Content)

$MSO365 = = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Productivity/MSO365.ps1")
Invoke-Expression $($MSO365.Content)

$MSO365E = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Productivity/Office365AppsEnterprise.ps1")
Invoke-Expression $($MSO365E.Content)

$Office2021 = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Productivity/Office2021.ps1")
Invoke-Expression $($Office2021.Content)

$Office2024 = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Productivity/Office2024.ps1")
Invoke-Expression $($Office2024.Content)


Write-Host "Processing install for: Programming software..." -ForegroundColor DarkBlue -BackgroundColor White

$VSCode = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Programming/VSCode.ps1")
Invoke-Expression $($VSCode.Content)

$AICursor = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Programming/AICursorEditor.ps1")
Invoke-Expression $($AICursor.Content)

$VS2022Enterprise = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Programming/VS2022Enterprise.ps1")
Invoke-Expression $($VS2022Enterprise.Content)

Write-Host "Processing install for: Vitual Desktop Interface software..." -ForegroundColor DarkBlue -BackgroundColor White

$AnyDesk = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/VDI-RemoteDesktop/AnyDesk.ps1")
Invoke-Expression $($AnyDesk.Content)

$MSRemoteDesktop = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/VDI-RemoteDesktop/MSRemoteDesktop.ps1")
Invoke-Expression $($MSRemoteDesktop.Content)

$VMWareHorizon = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/VDI-RemoteDesktop/VMWareHorizon.ps1")
Invoke-Expression $($VMWareHorizon.Content)


Write-Host "Processing install for: Virtualization software..." -ForegroundColor DarkBlue -BackgroundColor White

$VMWareWSPro = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Virtualization/VMWareWorkstationPro.ps1")
Invoke-Expression $($VMWareWSPro.Content)


Write-Host "Processing install for: System Utilities - Hardware..." -ForegroundColor DarkBlue -BackgroundColor White

$LogitechOptions = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Hardware/LogitechOptions.ps1")
Invoke-Expression $($LogitechOptions.Content)

$LogitechUnifying = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Hardware/LogitechUnifying.ps1")
Invoke-Expression $($LogitechUnifying.Content)

$SamsungMagician = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Hardware/SamsungMagician.ps1")
Invoke-Expression $($SamsungMagician.Content)

$CrucialStorage = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Hardware/CrucialStorage.ps1")
Invoke-Expression $($CrucialStorage.Content)

$MSMouseKB = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Hardware/MSMouseKeyboard.ps1")
Invoke-Expression $($MSMouseKB.Content)

$FanUtilities = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Manufacturer-Specific%20Scripts/Lian-Li/Lian-Li.ps1")
Invoke-WebRequest $($FanUtilities.Content)


Write-Host "Processing install for: System Utilities - Software..." -ForegroundColor DarkBlue -BackgroundColor White

$7Zip = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Software/7Zip.ps1")
Invoke-Expression $($7Zip.Content)

$CCleaner = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Software/CCleaner.ps1")
Invoke-Expression $($CCleaner.Content)

$DDU = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Software/DDU.ps1")
Invoke-Expression $($DDU.Content)

$SmartDefrag = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Software/SmartDefrag.ps1")
Invoke-Expression $($SmartDefrag.Content)

$OSKits = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Software/Win11-22H2-OSKits.ps1")
Invoke-Expression $($OSKits.Content)

$WiseRegistryCleaner = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Software/WiseRegistryCleaner.ps1")
Invoke-Expression $($WiseRegistryCleaner.Content)

$HardwareMonitorPRO = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Utilities-Software/HardwareMonitorPRO.ps1")
Invoke-Expression $($HardwareMonitorPro.Content)

Write-Host "Processing downloads for: Security software..." -ForegroundColor DarkBlue -BackgroundColor White

$MBAM = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Security/Anti-Malware/MalwareBytes.ps1")
Invoke-Expression $($MBAM.Content)

$BDTS = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Security/Anti-Virus/BitDefender.ps1")
Invoke-Expression $($BDTS.Content)

$N360 = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Security/Anti-Virus/Norton360.ps1")
Invoke-Expression $($N360.Content)

$IPVanish = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Security/VPN/IPVanish.ps1")
Invoke-Expression $($IPVanish.Content)

$NordVPN = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Advanced/Security/VPN/NordVPN.ps1")
Invoke-Expression $($NordVPN.Content)

Write-Host "Processing install for: System Rescue Downloads..." -ForegroundColor DarkBlue -BackgroundColor White

$Clonezilla = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/CLI-based/System%20Rescue/Clonezilla.ps1")
Invoke-Expression $($Clonezilla.Content)

$HirenBootCD = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Individual%20Scripts/CLI-based/System%20Rescue/HirenBootCD.ps1")
Invoke-Expression $($HirenBootCD.Content)

Write-Host "Processing install for: Windows Store Apps..." -ForegroundColor DarkBlue -BackgroundColor White

$BusinessStoreApps = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Windows%20Store%20Apps/Business-related/BusinessStoreApps.ps1")
Invoke-Expression $($BusinessStoreApps.Content)

$DevToolsStoreApps = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Windows%20Store%20Apps/Dev%20Tools-related/DevToolsStoreApps.ps1")
Invoke-Expression $($DevToolsStoreApps.Content)

$EntertainmentStoreApps = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Windows%20Store%20Apps/Entertainment-related/EntertainmentStoreApps.ps1")
Invoke-Expression $($EntertainmentStoreApps.Content)

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
$ASUS = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Manufacturer-Specific%20Scripts/ASUS/ASUS.ps1")
Invoke-Expression $($ASUS.Content)
}
ElseIf($PCManufacturer -like "*Acer*"){
Write-Host "Installing Acer Software...." -ForegroundColor Cyan
$Acer = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Manufacturer-Specific%20Scripts/Acer/Acer.ps1")
Invoke-Expression $($Acer.Content)
}
ElseIf($PCManufacturer -like "*Lenovo*"){
Write-Host "Installing Lenovo Software...." -ForegroundColor Cyan
$Lenovo = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Manufacturer-Specific%20Scripts/Lenovo/Lenovo.ps1")
Invoke-Expression $($Lenovo.Content)
}
ElseIf($PCManufacturer -like "*HP*"){
Write-Host "Installing HP Software...." -ForegroundColor Cyan
$HP = Invoke-WebRequest("https://github.com/osdcloudcline/Install-Scripts/raw/main/Individual%20Scripts/CLI-based/Manufacturer-Specific%20Scripts/HP/HP.ps1")
Invoke-Expression $($HP.Content)
}
ElseIf($PCManufacturer -like "*VMWare, Inc.*"){
Write-Host "This PC is a virtual machine operating in a VDI environment. No OEM Software is needed" -ForegroundColor Cyan
}


Write-Host "Processing system specific custom scripts..." -ForegroundColor Cyan

# Bryan Desktop 

If($env:computername -eq "BTDESKTOP"){

Write-Host "Processing install for: Bryan's Desktop Utilities software..." -ForegroundColor Cyan

$BTDesktopUtils = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Individual%20Scripts/Utilities/Custom/Bryan%20Desktop/CustomDesktopUtilities.ps1")
Invoke-Expression $($BTDesktopUtils.Content)
}
else{ 
Write-Host "Skipping execution of a Custom Utilities Script" -ForegroundColor DarkRed -BackgroundColor White
}

# Bryan Desktop Wallpaper 

If($env:computername -eq "BTDESKTOP"){

Write-Host "Processing downloads for: Bryan's Desktop wallpaper..." -ForegroundColor Cyan

$BTDesktopWallpaper = Invoke-WebRequest("")
Invoke-Expression $($BTDesktopWallpaper.Content)
}
else{
Write-Host "Downloading Other Wallpapers..." -ForegroundColor Cyan BackgroundColor White
$OtherWallpaper = Invoke-WebRequest("")
Invoke-Expression $($OtherWallpaper.Content)
}

# Bryan Laptop

If($env:computername -eq "BTLAPTOP"){

Write-Host "Processing install for: Bryan's Laptop Utilities software..." -ForegroundColor Cyan

$BTLaptopUtils = Invoke-WebRequest("")
Invoke-Expression $($BTLaptopUtils.Content)
}
else{ 
Write-Host "Skipping execution of a Custom Utilities Script" -ForegroundColor DarkRed -BackgroundColor White
}

# Bryan Laptop Wallpaper

If($env:computername -eq "BTLAPTOP"){

Write-Host "Processing downloads for: Bryan's Laptop wallpaper..." -ForegroundColor Cyan
$BTLaptopWallpaper = Invoke-WebRequest("")
Invoke-Expression $($BTLaptopWallpaper.Content)
}
else{
Write-Host "Downloading Other Wallpapers..." -ForegroundColor Cyan BackgroundColor White
$OtherWallpaper = Invoke-WebRequest("")
Invoke-Expression $($OtherWallpaper.Content)
}

# Sean PC

# Billy PC



$Uninstall = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Uninstall/UninstallMainMenu.ps1")
Invoke-Expression $($Uninstall.Content)
