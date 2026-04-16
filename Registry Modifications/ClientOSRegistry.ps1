Import-Module -Name OSD -Force

# Define OS REG File source URLs

$reg1 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Registry%20Files/AddSafeMode.reg"
$reg2 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Registry%20Files/BypassNRO.reg"
$reg3 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Registry%20Files/CopyTo.reg"
$reg4 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Registry%20Files/DisableBSODAutoRestart.reg"
$reg5 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Registry%20Files/DisableBitLockerDeviceEncryption.reg"
$reg6 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Registry%20Files/DisableMicrosoftDefender.reg"
$reg7 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Registry%20Files/DisableWindowsRecall.reg"
$reg8 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Registry%20Files/EnableSUDO.reg"
$reg9 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Registry%20Files/MoveTo.reg"
$reg10 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Registry%20Files/RemoveRecommendedFromStartMenu-ALLUsers.reg"
$reg11 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Registry%20Files/SYSTEMDesktopIcons.reg"
$reg12 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Registry%20Files/ShowHiddenFilesFolders.reg"
$reg13 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Client%20Operating%20System/Registry%20Files/W11VerboseStatus.reg"

$destination = "C:\downloads\Registry\OS"

$OSREGFiles = Get-ChildItem -Path "C:\downloads\Registry\OS" -Filter *.reg

# OS REG Files

Save-WebFile -SourceUrl $reg1 -DestinationDirectory $destination
Save-WebFile -SourceUrl $reg2 -DestinationDirectory $destination
Save-WebFile -SourceUrl $reg3 -DestinationDirectory $destination
Save-WebFile -SourceUrl $reg4 -DestinationDirectory $destination
Save-WebFile -SourceUrl $reg5 -DestinationDirectory $destination
Save-WebFile -SourceUrl $reg6 -DestinationDirectory $destination
Save-WebFile -SourceUrl $reg7 -DestinationDirectory $destination
Save-WebFile -SourceUrl $reg8 -DestinationDirectory $destination
Save-WebFile -SourceUrl $reg9 -DestinationDirectory $destination
Save-WebFile -SourceUrl $reg10 -DestinationDirectory $destination
Save-WebFile -SourceUrl $reg11 -DestinationDirectory $destination
Save-WebFile -SourceUrl $reg12 -DestinationDirectory $destination
Save-WebFile -SourceUrl $reg13 -DestinationDirectory $destination

foreach ($file in $OSREGFiles){
 Write-Host "Processing: Client OS Registry modifications..." -ForegroundColor Cyan
 Write-Host
       reg import $file.FullName /s
 Write-Host
 Write-Host "Completed: Client OS Registry modifications" -ForegroundColor Green

 }

 # Define Software REG Files source URL

 $SWreg1 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Software/Adobe/Acrobat1.reg"
 $SWreg2 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Software/Adobe/Acrobat2.reg"
 $SWreg3 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Software/Adobe/AdobeCC.reg"
 $SWreg4 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Software/Adobe/AdobeCC2.reg"
 $SWreg5 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Software/Adobe/AdobeCC3.reg"
 $SWreg6 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Software/Glary%20Utilities/GlaryUtilities.reg"
 $SWreg7 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Software/UL%20Inc./3DMark.reg"
 $SWreg8 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Software/UL%20Inc./PCMark10.reg"
 $SWreg9 = "https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/Registry%20Modifications/Software/VMWare/VMWareWSPro.reg"
 
 $SWdestination = "C:\downloads\Registry\Software"

 $SWREGFiles = Get-ChildItem -Path "C:\downloads\Registry\Software" -Filter *.reg

 # Software REG Files

Save-WebFile -SourceUrl $SWreg1 -DestinationDirectory $SWdestination
Save-WebFile -SourceUrl $SWreg2 -DestinationDirectory $SWdestination
Save-WebFile -SourceUrl $SWreg3 -DestinationDirectory $SWdestination
Save-WebFile -SourceUrl $SWreg4 -DestinationDirectory $SWdestination
Save-WebFile -SourceUrl $SWreg5 -DestinationDirectory $SWdestination
Save-WebFile -SourceUrl $SWreg6 -DestinationDirectory $SWdestination
Save-WebFile -SourceUrl $SWreg7 -DestinationDirectory $SWdestination
Save-WebFile -SourceUrl $SWreg8 -DestinationDirectory $SWdestination
Save-WebFile -SourceUrl $SWreg9 -DestinationDirectory $SWdestination

foreach ($file in $SWREGFiles){
 Write-Host "Processing: Client OS SOFTWARE Registry modifications..." -ForegroundColor Cyan
 Write-Host
       reg import $file.FullName /s
 Write-Host
 Write-Host "Completed: Client OS SOFTWARE Registry modifications" -ForegroundColor Green

 }
