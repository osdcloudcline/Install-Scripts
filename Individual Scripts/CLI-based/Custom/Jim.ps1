$JimLog = "C:\Logs\JimPC.log"

Start-Transcript - Path $JimLog



Write-Host
Write-Verbose "Processing: System Software on $env:computername..." -Verbose

winget install --id Microsoft.DotNet.SDK.8 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.AspNetCore.3_1 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.AspNetCore.5 --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.DotNet.AspNetCore.6 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.AspNetCore.7 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.AspNetCore.8 --exact --accept-source-agreements --accept-source-agreements --force

winget install --id  Microsoft.DotNet.Runtime.3_1 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.Runtime.5 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.Runtime.6 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.Runtime.7 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.Runtime.8 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.Runtime.9 --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Microsoft.VCRedist.2005.x64 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.VCRedist.2005.x86 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.VCRedist.2008.x64 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.VCRedist.2008.x86 --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.VCRedist.2010.x64 --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.VCRedist.2010.x86 --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.VCRedist.2012.x64 --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.VCRedist.2012.x86 --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.VCRedist.2013.x64 --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.VCRedist.2013.x86 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.VCRedist.2015+.x64 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.VCRedist.2015+.x86  --exact --accept-source-agreements --accept-source-agreements --force
choco install vcredist2017 -y

winget install --id Oracle.JavaRuntimeEnvironment --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Microsoft.XNARedist --exact --accept-source-agreements --accept-source-agreements --force

choco install openal -y

winget install --id Microsoft.Edge --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.EdgeDriver --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Microsoft.WindowsTerminal --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.PowerShell --exact --accept-source-agreements --accept-source-agreements --force

Write-Host
Write-Verbose "Processing: Web Browsers on $env:computername..." -Verbose

winget install --id Google.Chrome --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Mozilla.Firefox --exact --accept-source-agreements --accept-source-agreements --force

Write-Host
Write-Verbose "Processing: Cloud Drives on $env:computername..." -Verbose

winget install --id Microsoft.OneDrive --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Apple.iCloud --exact --accept-source-agreements --accept-source-agreements --force

Write-Host
Write-Verbose "Processing: Media Software on $env:computername..." -Verbose

winget install --id XBMCFoundation.Kodi  --exact --accept-source-agreements --accept-source-agreements --force
winget install --id MoritzBunkus.MKVToolNix --exact --accept-source-agreements --accept-source-agreements --force
winget install --id MediaArea.MediaInfo.GUI --exact --accept-source-agreements --accept-source-agreements --force
winget install --id VideoLAN.VLC --exact --accept-source-agreements --accept-source-agreements --force


Write-Host
Write-Verbose "Processing: Productivity software on $env:computername..." -Verbose

winget install --id Adobe.Acrobat.Reader.64-bit --exact --accept-source-agreements --accept-source-agreements --force

Write-Host
Write-Verbose "Processing: Hardware Utilities - Software on $env:computername..." -Verbose

winget install --id Crucial.StorageExecutive --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Logitech.Options --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Logitech.UnifyingSoftware --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.MouseandKeyboardCenter --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Samsung.SamsungMagician --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id WesternDigital.Dashboard --exact --accept-source-agreements --accept-source-agreements --force 

Write-Host
Write-Verbose "Processing: Utilities - Software on $env:computername..." -Verbose

winget install --id 7zip.7zip --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Piriform.CCleaner --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Wagnardsoft.DisplayDriverUninstaller --exact --accept-source-agreements --accept-source-agreements --force 

Write-Host
Write-Verbose "Processing: Installing PowerShell Modules on $env:computername..." -Verbose

Install-Module -Name OSD -Force
Import-Module -Name OSD -Force

Install-Module -Name 7Zip4Powershell -Force
Import-Module -Name 7Zip4Powershell -Force

Install-Module -Name PSWindowsUpdate -Force
Import-Module -Name PSWindowsUpdate -Force

$scanstateURL1 = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/USMT/scanstate1.zip"
$scanstateURL2 = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/USMT/scanstate2.zip"
$scanstateURL3 = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/USMT/scanstate3.zip"
$scanstateURL4 = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/USMT/scanstate4.zip"

$USMTdestination = "C:\downloads"

$USMTDestination = "C:\USMT"

Write-Host
Write-Verbose "Processing: Acquiring USMT Scanstate on $env:computername..." -Verbose

Save-WebFile -SourceUrl $scanstateURL1 -DestinationDirectory $USMTdestination
Save-WebFile -SourceUrl $scanstateURL2 -DestinationDirectory $USMTdestination
Save-WebFile -SourceUrl $scanstateURL3 -DestinationDirectory $USMTdestination
Save-WebFile -SourceUrl $scanstateURL4 -DestinationDirectory $USMTdestination

Expand-7Zip -ArchiveFileName "$USMTdestination\scanstate1.zip" -TargetPath $USMTDestination
Expand-7Zip -ArchiveFileName "$USMTdestination\scanstate2.zip" -TargetPath $USMTDestination
Expand-7Zip -ArchiveFileName "$USMTdestination\scanstate3.zip" -TargetPath $USMTDestination
Expand-7Zip -ArchiveFileName "$USMTdestination\scanstate4.zip" -TargetPath $USMTDestination

Write-Host
Write-Verbose "Processing: Office 2024 on $env:computername..." -Verbose

$OfficeGHdownloads = "C:\Office\2024" 
mkdir $OfficeGHdownloads
$Office2024Files1Url = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Productivity/Microsoft/Office%202024/Configuration-Office2024-EntireSuiteVL.xml"
$Office2024Files2Url = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Productivity/Microsoft/Office%202024/officedeploymenttool_18227-20162.exe"
$Office2024Files3Url = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Productivity/Microsoft/Office%202024/setup.exe"

Save-WebFile -SourceUrl $Office2024Files1Url -DestinationDirectory $OfficeGHdownloads
Save-WebFile -SourceUrl $Office2024Files2Url -DestinationDirectory $OfficeGHdownloads
Save-WebFile -SourceUrl $Office2024Files3Url -DestinationDirectory $OfficeGHdownloads

cd $OfficeGHdownloads

$setup = "C:\Office\2024\setup.exe"
$arguments = "/configure C:\Office\2024\Configuration-Office2024-EntireSuiteVL.xml"

Start-Process -FilePath $setup -ArgumentList $arguments

Write-Host
Write-Verbose "Processing: MS DaRT on $env:computername..." -Verbose

$destination = "C:\downloads"
$DART = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/DaRT/version%2010.0%20x64/MSDaRT100.msi"
Save-WebFile -SourceUrl $DART -DestinationDirectory $destination

Write-Host
Write-Verbose "Processing: Malwarebytes on $env:computername..." -Verbose 

winget install --id Malwarebytes.Malwarebytes --silent --exact --accept-source-agreements --accept-source-agreements --force

Write-Host
Write-Verbose "Processing: OS Updates on $env:computername..." -Verbose

Install-WindowsUpdate -AcceptAll

Stop-Transcript
