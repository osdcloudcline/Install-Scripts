winget install --id Chocolatey.Chocolatey -e --silent --exact --accept-source-agreements --accept-source-agreements --force --source winget

winget install --id Microsoft.DotNet.SDK.8 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.AspNetCore.3_1 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.AspNetCore.5 --silent --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.DotNet.AspNetCore.6 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.AspNetCore.7 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.AspNetCore.8 --silent --exact --accept-source-agreements --accept-source-agreements --force

winget install --id  Microsoft.DotNet.Runtime.3_1 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.Runtime.5 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.Runtime.6 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.Runtime.7 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.Runtime.8 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.Runtime.9 --silent --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Microsoft.VCRedist.2005.x64 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.VCRedist.2005.x86 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.VCRedist.2008.x64 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.VCRedist.2008.x86 --silent --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.VCRedist.2010.x64 --silent --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.VCRedist.2010.x86 --silent --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.VCRedist.2012.x64 --silent --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.VCRedist.2012.x86 --silent --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.VCRedist.2013.x64 --silent --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.VCRedist.2013.x86 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.VCRedist.2015+.x64 --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.VCRedist.2015+.x86  --silent --exact --accept-source-agreements --accept-source-agreements --force
choco install vcredist2017 -y

winget install --id Oracle.JavaRuntimeEnvironment --silent --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Microsoft.XNARedist --silent --exact --accept-source-agreements --accept-source-agreements --force

choco install openal -y

winget install --id Microsoft.Edge --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.EdgeDriver --silent --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Microsoft.WindowsTerminal --silent --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Google.Chrome --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id DuckDuckGo.DesktopBrowser --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Mozilla.Firefox --silent --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Dropbox.Dropbox --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Google.GoogleDrive --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Nextcloud.NextcloudDesktop --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.OneDrive --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Apple.iCloud --silent --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Docker.DockerDesktop --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id GitHub.GitHubDesktop --silent --exact --accept-source-agreements --accept-source-agreements --force

choco install filezilla  -y
winget install --id PuTTY.PuTTY --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id WinSCP.WinSCP --silent --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Valve.Steam  --silent --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Audacity.Audacity --silent --exact --accept-source-agreements --accept-source-agreements --force
choco install audacity-ffmpeg -y
winget install --id GIMP.GIMP --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id HandBrake.HandBrake --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id XBMCFoundation.Kodi  --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id MoritzBunkus.MKVToolNix --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id GuinpinSoft.MakeMKV  --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id MediaArea.MediaInfo.GUI --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Logitech.MyHarmony --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id PowerSoftware.PowerISO --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id VideoLAN.VLC --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Apple.iTunes --silent --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Adobe.Acrobat.Reader.64-bit --silent --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Anysphere.Cursor --silent --exact --accept-source-agreements --accept-source-agreements --force
choco install visualstudio2022enterprise --package-parameters "--allWorkloads --includeRecommended --includeOptional --passive --locale en-US" -y
winget install --id Microsoft.VisualStudioCode --silent --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Crucial.StorageExecutive --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Logitech.Options --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Logitech.UnifyingSoftware --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.MouseandKeyboardCenter --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Samsung.SamsungMagician --silent --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id WesternDigital.Dashboard --silent --exact --accept-source-agreements --accept-source-agreements --force 

winget install --id 7zip.7zip --silent --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Piriform.CCleaner --silent --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Wagnardsoft.DisplayDriverUninstaller --silent --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Rainmeter.Rainmeter --silent --exact --accept-source-agreements --accept-source-agreements --force
winget install --id WhirlwindFX.SignalRgb --silent --exact --accept-source-agreements --accept-source-agreements --force

winget install --id AnyDeskSoftwareGmbH.AnyDesk --silent --exact --accept-source-agreements --accept-source-agreements --force 
choco install vmware-horizon-client -y

$WADKDir1 = "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\x86\Media"
$WADKDir2 = "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\x86\WinPE_OCs"
$WADKDir3 = "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Windows Preinstallation Environment\x86\en-us"

New-Item -Path $WADKDir1 -ItemType Directory -Force
New-Item -Path $WADKDir2 -ItemType Directory -Force
New-Item -Path $WADKDir3 -ItemType Directory -Force

winget install --id Microsoft.WindowsADK --silent --accept-package-agreements --accept-source-agreements --scope machine --force 
winget install --id Microsoft.ADKPEAddon  --silent --accept-package-agreements --accept-source-agreements --scope machine --force 
winget install --id Microsoft.DeploymentToolkit --silent --accept-package-agreements --accept-source-agreements --scope machine --force


Install-Module -Name OSD -Force
Import-Module -Name OSD -Force

Install-Module -Name 7Zip4Powershell -Force
Import-Module -Name 7Zip4Powershell -Force

winget install --id Glarysoft.GlaryUtilities --silent --exact --accept-source-agreements --accept-source-agreements --force 
$OSDCloudGHdownloads = "C:\downloads"
$GlaryZipURL1 = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/Glary%20Utilities/GlaryUtilities1.zip"
$GlaryZipURL2 = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/Glary%20Utilities/GlaryUtilities2.zip"
$GlaryUnZipPath = "C:\downloads\GlaryUtilities"

Save-WebFile -SourceUrl $GlaryZipURL1 -DestinationDirectory $OSDCloudGHdownloads
Save-WebFile -SourceUrl $GlaryZipURL2 -DestinationDirectory $OSDCloudGHdownloads
Expand-7Zip -ArchiveFileName "$OSDCloudGHdownloads\GlaryUtilities1.zip" -TargetPath $GlaryUnZipPath 
Expand-7Zip -ArchiveFileName "$OSDCloudGHdownloads\GlaryUtilities2.zip" -TargetPath $GlaryUnZipPath 
Copy-Item -Path "C:\downloads\GlaryUtilities" -Destination "C:\Program Files (x86)\Glary Utilities" -Recurse -Force 
Stop-Process -Name Integrator.exe -Force
Stop-Process -Name MemfilesService.exe -Force
Copy-Item -Path "C:\Program Files (x86)\Glary Utilities\GlaryUtilities\*.*" -Destination "C:\Program Files (x86)\Glary Utilities" -Recurse -Force 
Remove-Item -Path "C:\Program Files (x86)\Glary Utilities\GlaryUtilities" -Force -Confirm:$false
Copy-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Glary Utilities.lnk" -Destination "C:\Users\$env:username\Desktop" -Force

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
