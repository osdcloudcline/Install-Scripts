#################################################################
# Main Menu
#################################################################

Function Show-MainMenu{
   [CmdletBinding()]
   param(
   [string]$Title = 'Operating System Administration & Deployment - Main Menu',
   [string]$Question = 'What type of action do you need to do?' 
   )
cls

       $os = Get-CimInstance -ClassName Win32_OperatingSystem
       $PCName = "$env:computername"
       $OSVerison = $($os.Version)
       $UBR = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name UBR).UBR
       $FullOS = $($os.Caption)
       $OSBuild = $($os.Version) + "." + $UBR
       $DisplayVersion = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name DisplayVersion).DisplayVersion
       $EditionID = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name EditionID).EditionID
       $CompleteOSInfo = "$FullOS" + " $OSBuild" + " $DisplayVersion"
       $EdgeEXE = Get-ItemPropertyValue 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\msedge.exe' "(default)"
       $EdgeBrowser = (Get-Item $EdgeEXE).VersionInfo.ProductVersion

       $IP1 = (Get-NetIpaddress | Where-Object { $_.AddressFamily -eq "IPv4" -and $_.InterfaceAlias -eq "Ethernet" -and $_.PrefixLength -eq "24"}).IPAddress
       $IP2 = (Get-NetIpaddress | Where-Object { $_.AddressFamily -eq "IPv4" -and $_.InterfaceAlias -eq "Ethernet 2" -and $_.PrefixLength -eq "24"}).IPAddress
       $IP3 = (Get-NetIpaddress | Where-Object { $_.AddressFamily -eq "IPv4" -and $_.InterfaceAlias -eq "WiFi" -and $_.PrefixLength -eq "24"}).IPAddress
       $NetName = (Get-NetconnectionProfile).Name
       $GatewayDNS = (Get-CimInstance -Class Win32_NetworkAdapterConfiguration -Filter IPEnabled=TRUE -ComputerName $env:computername).DefaultIPGateway
       $ExternalIP = (Invoke-WebRequest -uri "https://api.ipify.org/").Content
       
       
       $Baseboard1 = (Get-CimInstance -ClassName Win32_Baseboard).Manufacturer
       $Baseboard2 = (Get-CimInstance -ClassName Win32_Baseboard).Product
       $CPU = (Get-CimInstance -Class Win32_Processor -ComputerName "$env:computername").Name
       $RAM = (Get-CimInstance -Class Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).sum/1gb
       $PCManufacturer = (Get-CimInstance -ClassName Win32_ComputerSystem).Manufacturer
       $BIOS1 = (Get-CimInstance -ClassName Win32_BIOS).Manufacturer
       $BIOS2 = (Get-CimInstance -ClassName Win32_BIOS).SMBIOSBIOSVersion
       $CheckUEFIBoot = [System.Text.Encoding]::ASCII.GetString((Get-SecureBootUEFI PK).bytes) -match "DO NOT TRUST|DO NOT SHIP"
       
       Write-Host
       Write-Host         "Running Computer Info:" -ForegroundColor Green 
       Write-Verbose "System Hostname: $PCName" -Verbose
       Write-Verbose "Running Operating System: $CompleteOSInfo" -Verbose  
       Write-Verbose "Operating System: $FullOS" -Verbose 
       Write-Verbose "Build Number: $OSBuild" -Verbose 
       Write-Verbose "Display Version: $DisplayVersion" -Verbose
       Write-Verbose "OS Edition: $EditionID" -Verbose 
       Write-Verbose "MS Edge Chromium Version: $EdgeBrowser" -Verbose 

       Write-Host 
       Write-Host         "System Hardware Info:" -ForegroundColor Green 
       Write-Verbose "System Hostname: $PCName" -Verbose
       Write-Verbose "Processor: $CPU" -Verbose
       Write-Verbose "System Memory: $RAM GB" -Verbose
       Write-Verbose "Motherboard: $Baseboard1 $Baseboard2" -Verbose
       Write-Verbose "Manufacturer: $PCManufacturer" -Verbose
       Write-Verbose "System BIOS: $BIOS1 $BIOS2" -Verbose
      If($CheckUEFIBoot -eq $false){
       Write-Host "Great news - $env:computername using $Baseboard1 $Baseboard2 is NOT affected by PKFail security vulneralbility" -ForegroundColor DarkBlue -BackgroundColor White
    }
       ElseIf($CheckUEFIBoot -eq $true){
       Write-Host "Bad news - $env:computername using $Baseboard1 $Baseboard2 IS affected by PKFail security vulneralbility" -ForegroundColor DarkRed -BackgroundColor White
    }
       
       Write-Host 
       Write-Host         "Network Connection Info:" -ForegroundColor Green 
       Write-Verbose "System Hostname: $PCName" -Verbose
       Write-Verbose "System IP Address 1: $IP1" -Verbose
       Write-Verbose "System IP Address 2: $IP2" -Verbose
       Write-Verbose "System IP Address 3: $IP3" -Verbose
       Write-Verbose "Network Name: $NetName" -Verbose
       Write-Verbose "System Gateway/DNS Server: $GatewayDNS" -Verbose
       Write-Verbose "WAN or External IP Address: $ExternalIP" -Verbose
      
Write-Host
Write-Host "Hello, $env:username..." -ForegroundColor Cyan 
Write-Host
$Date = Get-Date
Write-Host "Today is:" "$Date"
Write-Host
Write-Verbose "Your user profile is located at $env:userprofile" -Verbose
Write-Host
Write-Host 
Write-Host '                                                                              ' -BackgroundColor White                                                              
Write-Host ' This Git Hub-based deployment scripting solution allows the user to perform: ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '     - Downloads PPKG Files and Scripts                                       ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
Write-Host '                                                                              ' -BackgroundColor White
pause
Clear-Host

Write-Host "======= $Title ======"
Write-Host " 1. Download Advanced Software Configuration PPKG Files and related scripts"
Write-Host " 2. Download Standard Software Configuration PPKG Files and related scripts"
Write-Host " 3. Download Corporate Software Configuration PPKG Files and related scripts"
Write-Host " 4. Download Client VDI Software Configuration PPKG Files and related scripts"
Write-Host " 5. Download Server VDI Software Configuration PPKG Files and related scripts"
Write-Host " 6. Download Honeypot Software Configuration PPKG Files and related scripts"
Write-Host " 7. Download IT Tech Software Configuration PPKG Files and related scripts"
Write-Host " 8. Download OEM Vendor Software Configuration PPKG Files and related scripts"
Write-Host " 9. Download Custom PC Software Configuration PPKG Files and related scripts"
Write-Host " 10. Computer File Inventory"
Write-Host " 11. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
  '1'{  cls
        If(-not(Get-Module -ListAvailable -Name OSD)){
        Write-Verbose "PowerShell Module: 'OSD' is not installed. Please wait while Windows installs the module..." -Verbose
        Write-Host
        Install-Module -Name OSD -AllowClobber -Force
        Import-Module -Name OSD -Force
        $PS5Modules = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/PowerShell%20Modules/Install/Install%20Client%20OS%20SYSTEM%20PowerShell%20Modules.ppkg"
        $PS7Modules = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/PowerShell%20Modules/Install/Install%20Client%20OS%20SYSTEM%20PowerShell%207.x%20Modules.ppkg"
        $ADVCloudStorage = "https://github.com/osdcloudcline/Install-Scripts/blob/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Cloud%20Storage/Advanced%20Software%20Configuration%20-%20Cloud%20Storage.ppkg"
        $ADVDatabaseManagement = ""
        $ADVDevSoftware = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Development/Advanced%20Software%20Configuration%20-%20Development%20Software.ppkg"
        $ADVFileTransfer = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/File%20Transfer/Advanced%20Software%20Configuration%20-%20File%20Transfer.ppkg"
        $ADVGaming = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Gaming/Advanced%20Software%20Configuration%20-%20PC%20Gaming.ppkg"
        $ADVWebBrowsing = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Web%20Browsing/Advanced%20Software%20Configuration%20-%20Web%20Browsers.ppkg"
        $HWSoftware = "https://github.com/osdcloudcline/Install-Scripts/blob/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/System%20Hardware-related%20Software/Advanced%20Software%20Configuration%20-%20System%20Hardware%20Utilities.ppkg"
        $ADVMedia = "https://github.com/osdcloudcline/Install-Scripts/blob/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Media/Advanced%20Software%20Configuration%20-%20Media%20Software.ppkg"
        $ADVProgramming = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Programming/Advanced%20Software%20Configuration%20-%20Programming.ppkg"
        $ADVProductivity = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Productivity/Advanced%20Software%20Installation%20-%20Productivity%20Software.ppkg"
        $ADVSecurity = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Security/Advanced%20Software%20Configuration%20-%20Security%20Software.ppkg"
        $OSDCloud2 = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/OSDCloud%20v2%20Pre-Requisites/OSDCloud%20Version%202.0.ppkg"
        $OSSystemSoftware = "https://github.com/osdcloudcline/Install-Scripts/blob/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Client%20OS%20SYSTEM%20Software/Client%20OS%20SYSTEM%20SOFTWARE.ppkg"
        $ADVRDCVDI = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Remote%20Desktop%20Connections%20and%20VDI/Advanced%20Software%20Configuration%20-%20Remote%20Desktop,%20Help%20Desk%20Support%20and%20VDI.ppkg"
        $ClientOSRegistry = ""
        $OSASPRedistributables = ""
        $NETFramework = ""
        $OracleJRE = ""
        $PackageProviders = ""
        $SYSTEMSoftware = ""
        $ADVScript1 = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Advanced.ps1"
        $ADVScript2 = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/Advanced.ps1"

        $ADVdestinationPPKG = "C:\Provisioning Packages\Advanced Software Configuration\PPKG Files\Software"
        $ADVdestinationScripts = "C:\Provisioning Packages\Advanced Software Configuration\Scripts"
        $OSDDeploymentPPKG = "C:\Provisioning Packages\Advanced Software Configuration\PPKG Files\OSDCloud Version 2"
        $PSdestinationPPKG = "C:\Provisioning Packages\Advanced Software Configuration\PPKG Files\PowerShell Modules"
        $OSSYSTEMdestinationPPKG = "C:\Provisioning Packages\Advanced Software Configuration\PPKG Files\OS SYSTEM Software"

        Write-Verbose "Processing: Creating $ADVdestinationPPKG..." -Verbose
        Write-Host
        New-Item -Path $ADVdestinationPPKG -ItemType Directory -Force
        Write-Verbose "Processing: Creating $ADVdestinationScripts..." -Verbose
        Write-Host
        New-Item -Path $ADVdestinationScripts -ItemType Directory -Force
        Write-Verbose "Processing: Creating $OSDDeploymentPPKG..." -Verbose
        Write-Host
        New-Item -Path $OSDDeploymentPPKG -ItemType Directory -Force
        Write-Verbose "Processing: Creating $PSdestinationPPKG..." -Verbose
        Write-Host
        New-Item -Path $PSdestinationPPKG -ItemType Directory -Force
        Write-Verbose "Processing: Creating $OSSYSTEMdestinationPPKG..." -Verbose
        Write-Host
        New-Item -Path $OSSYSTEMdestinationPPKG -ItemType Directory -Force


        

        Write-Verbose "Processing: Acquiring Advanced Software Configuration - PPKG Files..." -Verbose
        Write-Host
        Save-WebFile -SourceUrl $PS5Modules -DestinationDirectory $PSdestinationPPKG
        Save-WebFile -SourceUrl $PS7Modules -DestinationDirectory $PSdestinationPPKG
        Save-WebFile -SourceUrl $ClientOSRegistry -DestinationDirectory $OSDDeploymentPPKG
        Save-WebFile -SourceUrl $ADVCloudStorage -DestinationDirectory $ADVdestinationPPKG
        Save-WebFile -SourceUrl $ADVDevSoftware -DestinationDirectory $ADVdestinationPPKG
        Save-WebFile -SourceUrl $ADVFileTransfer -DestinationDirectory $ADVdestinationPPKG
        Save-WebFile -SourceUrl $ADVGaming -DestinationDirectory $ADVdestinationPPKG
        Save-WebFile -SourceUrl $ADVWebBrowsing -DestinationDirectory $ADVdestinationPPKG
        Save-WebFile -SourceUrl $HWSoftware -DestinationDirectory $ADVdestinationPPKG
        Save-WebFile -SourceUrl $ADVMedia -DestinationDirectory $ADVdestinationPPKG
        Save-WebFile -SourceUrl $ADVProgramming -DestinationDirectory $ADVdestinationPPKG
        Save-WebFile -SourceUrl $ADVProductivity -DestinationDirectory $ADVdestinationPPKG
        Save-WebFile -SourceUrl $ADVSecurity -DestinationDirectory $ADVdestinationPPKG
        Save-WebFile -SourceUrl $OSDCloud2 -DestinationDirectory $OSDDeploymentPPKG
        Save-WebFile -SourceUrl $OSSystemSoftware -DestinationDirectory $OSSYSTEMdestinationPPKG
        Save-WebFile -SourceUrl $ADVRDCVDI -DestinationDirectory  $ADVdestinationPPKG
        Save-WebFile -SourceUrl $ADVDatabaseManagement -DestinationDirectory  $ADVdestinationPPKG

       
        Write-Verbose "Processing: Renaming PPKG Files..." -Verbose
       Write-Host
       Rename-Item -Path "C:\Provisioning\PS5-Modules\Install%20Client%20OS%20SYSTEM%20PowerShell%20Modules.ppkg" -NewName "C:\Provisioning\PS5-Modules\PS5Modules.ppkg"
       Rename-Item -Path "C:\Provisioning\PS7-Modules\Install%20Client%20OS%20SYSTEM%20PowerShell%207.x%20Modules.ppkg" -NewName "C:\Provisioning\PS7-Modules\PS7Moduless.ppkg" -Force
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20Cloud%20Storage.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-CloudStorage.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20Development%20Software.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-DevelopmentSoftware.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20File%20Transfer.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-FileTransfer.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20PC%20Gaming.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-Gaming.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20Web%20Browsers.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-WebBrowsers.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20System%20Hardware%20Utilities.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-SystemHardwareUtilities.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20Media%20Software.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-Media.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20Programming.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-Programming.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Installation%20-%20Productivity%20Software.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-Productivity.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20Security%20Software.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-Security.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20PC%20Benchmarking.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-SystemBenchmarking.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20Remote%20Desktop,%20Help%20Desk%20Support%20and%20VDI.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-RemoteConnections.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20Utilities%20Software.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-SystemUtilities.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20DataBase%20Management.PPKG" -NewName "C:\Provisioning\Advanced\Software\Advanced-DatabaseManagement.ppkg"
       Rename-Item -Path "C:\Provisioning\OSDCloud\OSDCloud%20Version%202.0.ppkg" -NewName "C:\Provisioning\OSDCloud\OSDCloud2.ppkg"
       Rename-Item -Path "C:\Provisioning\OS\Client%20OS%20SYSTEM%20SOFTWARE.ppkg" -NewName "C:\Provisioning\OS\SYSTEMSOFTWARE.ppkg"
       Rename-Item -Path "C:\Provisioning\OS\Client%20Operating%20System%20Registry%20Modifications.ppkg" -NewName "C:\Provisioning\OS\Client-Registry.ppkg"
      Write-Host
      Write-Verbose "Completed: Renaming PPKG Files..." -Verbose


        Write-Verbose "Processing: Acquiring Advanced Software Configuration - Script Files..." -Verbose
        Write-Host
        Save-WebFile -SourceUrl $ADVScript1 -DestinationDirectory $ADVdestinationScripts
        Rename-Item -Path "C:\Provisioning Packages\Advanced Software Configuration\Scripts\Advanced.ps1" -NewName "C:\Provisioning Packages\Advanced Software Configuration\Scripts\Advanced-PPKGDownload.ps1"
        Save-WebFile -SourceUrl $ADVScript2 -DestinationDirectory $ADVdestinationScripts
        Rename-Item -Path "C:\Provisioning Packages\Advanced Software Configuration\Scripts\Advanced.ps1" -NewName "C:\Provisioning Packages\Advanced Software Configuration\Scripts\Advanced-PPKGInstall.ps1"
      }else{
       Write-Verbose "PowerShell Module: OSD is installed" -Verbose
       Write-Host
       Import-Module -Name OSD -Force

        $PS5Modules = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/PowerShell%20Modules/Install/Install%20Client%20OS%20SYSTEM%20PowerShell%20Modules.ppkg"
        $PS7Modules = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/PowerShell%20Modules/Install/Install%20Client%20OS%20SYSTEM%20PowerShell%207.x%20Modules.ppkg"
        $ADVCloudStorage = "https://github.com/osdcloudcline/Install-Scripts/blob/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Cloud%20Storage/Advanced%20Software%20Configuration%20-%20Cloud%20Storage.ppkg"
        $ADVDatabaseManagement = ""
        $ADVDevSoftware = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Development/Advanced%20Software%20Configuration%20-%20Development%20Software.ppkg"
        $ADVFileTransfer = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/File%20Transfer/Advanced%20Software%20Configuration%20-%20File%20Transfer.ppkg"
        $ADVGaming = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Gaming/Advanced%20Software%20Configuration%20-%20PC%20Gaming.ppkg"
        $ADVWebBrowsing = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Web%20Browsing/Advanced%20Software%20Configuration%20-%20Web%20Browsers.ppkg"
        $HWSoftware = "https://github.com/osdcloudcline/Install-Scripts/blob/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/System%20Hardware-related%20Software/Advanced%20Software%20Configuration%20-%20System%20Hardware%20Utilities.ppkg"
        $ADVMedia = "https://github.com/osdcloudcline/Install-Scripts/blob/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Media/Advanced%20Software%20Configuration%20-%20Media%20Software.ppkg"
        $ADVProgramming = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Programming/Advanced%20Software%20Configuration%20-%20Programming.ppkg"
        $ADVProductivity = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Productivity/Advanced%20Software%20Installation%20-%20Productivity%20Software.ppkg"
        $ADVSecurity = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Security/Advanced%20Software%20Configuration%20-%20Security%20Software.ppkg"
        $OSDCloud2 = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/OSDCloud%20v2%20Pre-Requisites/OSDCloud%20Version%202.0.ppkg"
        $OSSystemSoftware = "https://github.com/osdcloudcline/Install-Scripts/blob/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Client%20OS%20SYSTEM%20Software/Client%20OS%20SYSTEM%20SOFTWARE.ppkg"
        $ADVRDCVDI = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Remote%20Desktop%20Connections%20and%20VDI/Advanced%20Software%20Configuration%20-%20Remote%20Desktop,%20Help%20Desk%20Support%20and%20VDI.ppkg"
        $ClientOSRegistry = ""
        
        $ADVScript1 = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/PPKG%20Files/Software%20Configurations/Advanced/Advanced.ps1"
        $ADVScript2 = "https://github.com/osdcloudcline/Install-Scripts/raw/refs/heads/main/Provisioning%20Package%20Silent%20Install%20Scripts/Advanced.ps1"

        $ADVdestinationPPKG = "C:\Provisioning Packages\Advanced Software Configuration\PPKG Files\Software"
        $ADVdestinationScripts = "C:\Provisioning Packages\Advanced Software Configuration\Scripts"
        $OSDDeploymentPPKG = "C:\Provisioning Packages\Advanced Software Configuration\PPKG Files\OSDCloud Version 2"
        $PSdestinationPPKG = "C:\Provisioning Packages\Advanced Software Configuration\PPKG Files\PowerShell Modules"
        $OSSYSTEMdestinationPPKG = "C:\Provisioning Packages\Advanced Software Configuration\PPKG Files\OS SYSTEM Software"

        Write-Verbose "Processing: Creating $ADVdestinationPPKG..." -Verbose
        Write-Host
        New-Item -Path $ADVdestinationPPKG -ItemType Directory -Force
        Write-Verbose "Processing: Creating $ADVdestinationScripts..." -Verbose
        Write-Host
        New-Item -Path $ADVdestinationScripts -ItemType Directory -Force
        Write-Verbose "Processing: Creating $OSDDeploymentPPKG..." -Verbose
        Write-Host
        New-Item -Path $OSDDeploymentPPKG -ItemType Directory -Force
        Write-Verbose "Processing: Creating $PSdestinationPPKG..." -Verbose
        Write-Host
        New-Item -Path $PSdestinationPPKG -ItemType Directory -Force
        Write-Verbose "Processing: Creating $OSSYSTEMdestinationPPKG..." -Verbose
        Write-Host
        New-Item -Path $OSSYSTEMdestinationPPKG -ItemType Directory -Force


        

        Write-Verbose "Processing: Acquiring Advanced Software Configuration - PPKG Files..." -Verbose
        Write-Host
        Save-WebFile -SourceUrl $PS5Modules -DestinationDirectory $PSdestinationPPKG
        Save-WebFile -SourceUrl $PS7Modules -DestinationDirectory $PSdestinationPPKG
        Save-WebFile -SourceUrl $ClientOSRegistry -DestinationDirectory $OSDDeploymentPPKG
        Save-WebFile -SourceUrl $ADVCloudStorage -DestinationDirectory $ADVdestinationPPKG
        Save-WebFile -SourceUrl $ADVDevSoftware -DestinationDirectory $ADVdestinationPPKG
        Save-WebFile -SourceUrl $ADVFileTransfer -DestinationDirectory $ADVdestinationPPKG
        Save-WebFile -SourceUrl $ADVGaming -DestinationDirectory $ADVdestinationPPKG
        Save-WebFile -SourceUrl $ADVWebBrowsing -DestinationDirectory $ADVdestinationPPKG
        Save-WebFile -SourceUrl $HWSoftware -DestinationDirectory $ADVdestinationPPKG
        Save-WebFile -SourceUrl $ADVMedia -DestinationDirectory $ADVdestinationPPKG
        Save-WebFile -SourceUrl $ADVProgramming -DestinationDirectory $ADVdestinationPPKG
        Save-WebFile -SourceUrl $ADVProductivity -DestinationDirectory $ADVdestinationPPKG
        Save-WebFile -SourceUrl $ADVSecurity -DestinationDirectory $ADVdestinationPPKG
        Save-WebFile -SourceUrl $OSDCloud2 -DestinationDirectory $OSDDeploymentPPKG
        Save-WebFile -SourceUrl $OSSystemSoftware -DestinationDirectory $OSSYSTEMdestinationPPKG
        Save-WebFile -SourceUrl $ADVDatabaseManagement -DestinationDirectory  $ADVdestinationPPKG

        Write-Verbose "Processing: Renaming PPKG Files..." -Verbose
       Write-Host
       Rename-Item -Path "C:\Provisioning\PS5-Modules\Install%20Client%20OS%20SYSTEM%20PowerShell%20Modules.ppkg" -NewName "C:\Provisioning\PS5-Modules\PS5Modules.ppkg"
       Rename-Item -Path "C:\Provisioning\PS7-Modules\Install%20Client%20OS%20SYSTEM%20PowerShell%207.x%20Modules.ppkg" -NewName "C:\Provisioning\PS7-Modules\PS7Moduless.ppkg" -Force
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20Cloud%20Storage.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-CloudStorage.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20Development%20Software.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-DevelopmentSoftware.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20File%20Transfer.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-FileTransfer.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20PC%20Gaming.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-Gaming.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20Web%20Browsers.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-WebBrowsers.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20System%20Hardware%20Utilities.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-SystemHardwareUtilities.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20Media%20Software.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-Media.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20Programming.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-Programming.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Installation%20-%20Productivity%20Software.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-Productivity.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20Security%20Software.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-Security.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20PC%20Benchmarking.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-SystemBenchmarking.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20Remote%20Desktop,%20Help%20Desk%20Support%20and%20VDI.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-RemoteConnections.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20Utilities%20Software.ppkg" -NewName "C:\Provisioning\Advanced\Software\Advanced-SystemUtilities.ppkg"
       Rename-Item -Path "C:\Provisioning\Advanced\Software\Advanced%20Software%20Configuration%20-%20DataBase%20Management.PPKG" -NewName "C:\Provisioning\Advanced\Software\Advanced-DatabaseManagement.ppkg"
       Rename-Item -Path "C:\Provisioning\OSDCloud\OSDCloud%20Version%202.0.ppkg" -NewName "C:\Provisioning\OSDCloud\OSDCloud2.ppkg"
       Rename-Item -Path "C:\Provisioning\OS\Client%20OS%20SYSTEM%20SOFTWARE.ppkg" -NewName "C:\Provisioning\OS\SYSTEMSOFTWARE.ppkg"
       Rename-Item -Path "C:\Provisioning\OS\Client%20Operating%20System%20Registry%20Modifications.ppkg" -NewName "C:\Provisioning\OS\Client-Registry.ppkg"
      Write-Host
      Write-Verbose "Completed: Renaming PPKG Files..." -Verbose

        Write-Verbose "Processing: Acquiring Advanced Software Configuration - Script Files..." -Verbose
        Write-Host
        Save-WebFile -SourceUrl $ADVScript1 -DestinationDirectory $ADVdestinationScripts
        Rename-Item -Path "C:\Provisioning Packages\Advanced Software Configuration\Scripts\Advanced.ps1" -NewName "C:\Provisioning Packages\Advanced Software Configuration\Scripts\Advanced-PPKGDownload.ps1"
        Save-WebFile -SourceUrl $ADVScript2 -DestinationDirectory $ADVdestinationScripts
        Rename-Item -Path "C:\Provisioning Packages\Advanced Software Configuration\Scripts\Advanced.ps1" -NewName "C:\Provisioning Packages\Advanced Software Configuration\Scripts\Advanced-PPKGInstall.ps1"
}
}
       
  '2' { cls
        $Domain = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Domain%20Administration/DomainAdminMain.ps1")
        Invoke-Expression $($Domain.Content)
        }
  '3' { cls
        $Local = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Local%20Computer/LocalPCMain.ps1")
        Invoke-Expression $($Local.Content)
        }
  '4' { cls
        $WinGetMain = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/WinGetMain.ps1")
        Invoke-Expression $($WinGetMain.Content)
        }
  '5' { cls
        $OSDCloud = Invoke-WebRequest ("https://github.com/osdcloudcline/OSDCloud/raw/refs/heads/main/Scripts/NEW-OSDCloudMain.ps1")
        Invoke-Expression $($OSDCloud.Content)
        }
  '6' { cls
        $OSDBuilder = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/OSDBuilder/OSDBuilderMain.ps1")
        Invoke-Expression $($OSDBuilder.Content)
        }
  '7' {cls
      $AuditMode = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/AuditMode/MainMenu.ps1")
      Invoke-Expression $($AuditMode.Content)
     }
  '8'{cls
      $DebloatOS = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/PostInstall/OSDebloat/OSDebloatMain.ps1")
      Invoke-Expression $($DebloatOS.Content)
     }
  '9'{
        Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
        Import-Module -Name OSD -Force
        $OSDCloudGHDownloads = "C:\OSDCloud\GitHub\downloads"
        $UPBR = "https://github.com/osdcloudcline/OSDCloud/raw/main/User%20Profile%20Backup%20Restore/UserProfileBackupRestore.exe"
        Write-Host "Downloading User Profile Backup and Restore..." -ForegroundColor Yellow
        Write-Output "Download URL: $UPBR" -Verbose
        Write-Output "Download Location: $OSDCloudGHDownloads" -Verbose
        Save-WebFile -SourceUrl $UPBR -DestinationDirectory $OSDCloudGHDownloads
        $UPBROrgName = "C:\OSDCloud\GitHub\downloads\UserProfileBackupRestore.exe"
        $UPBRNewName = "C:\OSDCloud\GitHub\downloads\UPBR.exe"
        Rename-Item -Path $UPBROrgName -NewName $UPBRNewName
        Start-Process -FilePath "C:\OSDCloud\GitHub\downloads\UPBR.exe"
        Show-MainMenu
    }
    '13'{cls
         Show-FileInventoryMenu
    }
    '14'{exit}
    }
    }
    until ($selection -eq '11'){exit}
    }

Show-MainMenu

