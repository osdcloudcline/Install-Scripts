$UtilitiesHardwareInstallLog = "C:\Logs\Installs\Software\Advanced\GUI\$env:computername-HardwareUtilities.log"

Start-Transcript $UtilitiesHardwareInstallLog

winget install --id Crucial.StorageExecutive --exact --accept-source-agreements  --accept-package-agreements --force

winget install --id Logitech.Options --exact --accept-source-agreements  --accept-package-agreements --force

winget install --id Logitech.UnifyingSoftware --exact --accept-source-agreements  --accept-package-agreements --force

winget install --id Microsoft.MouseandKeyboardCenter --exact --accept-source-agreements  --accept-package-agreements --force

winget install --id Samsung.SamsungMagician --exact --accept-source-agreements  --accept-package-agreements --force

Stop-Transcript

$UtilitiesSoftwareInstallLog = "C:\Logs\Installs\Software\Advanced\GUI\$env:computername-SoftwareUtilities.log"

Start-Transcript $UtilitiesSoftwareInstallLog

winget install --id 7zip.7zip --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Piriform.CCleaner --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id Wagnardsoft.DisplayDriverUninstaller --exact --accept-source-agreements  --accept-package-agreements --force

$OSDCloudGHdownloads = "C:\downloads"
$Win11_22H2SDK = "C:\downloads\winsdksetup.exe"
$Win11_22H2SDKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/winsdksetup.exe'

Save-WebFile -SourceUrl $Win11_22H2SDKUrl -DestinationDirectory $OSDCloudGHdownloads

$Win11_22H2ADK = "C:\downloads\adksetup.exe"
$Win11_22H2ADKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adksetup.exe'

Save-WebFile -SourceUrl $Win11_22H2ADKUrl -DestinationDirectory $OSDCloudGHdownloads

$Win11_22H2PEADK = "C:\downloads\adkwinpesetup.exe"
$Win11_22H2PEADKUrl = 'https://github.com/osdcloudcline/OSDCloud/raw/main/OS%20Kits/adkwinpesetup.exe'

Save-WebFile -SourceUrl $Win11_22H2PEADKUrl -DestinationDirectory $OSDCloudGHdownloads

$HWMonitorProZIPURL = "https://github.com/osdcloudcline/Software/raw/main/Utilities/HW%20Monitor%20Pro/HWMonitorPro.exe"
$HWMonitorProdestination = "C:\downloads"

Save-WebFile -SourceUrl $HWMonitorProZIPURL -DestinationDirectory $HWMonitorProdestination

$HWMonitorProSetupURL = "https://github.com/osdcloudcline/Software/raw/main/Utilities/HW%20Monitor%20Pro/hwmonitor-pro_1.53.exe"
$HWMonitorProdestination = "C:\downloads" 

Save-WebFile -SourceUrl $HWMonitorProSetupURL -DestinationDirectory $HWMonitorProdestination

$DART10ZIPURL = "https://github.com/osdcloudcline/Software/raw/main/Utilities/DaRT/version%2010.0%20x64/DARTv10.zip"
$DART10SetupURL = "https://github.com/osdcloudcline/Software/raw/main/Utilities/DaRT/version%2010.0%20x64/MSDaRT100.msi"
$DART10destination = "C:\downloads"

Save-WebFile -SourceUrl $DART10ZIPURL -DestinationDirectory $DART10destination

Save-WebFile -SourceUrl $DART10SetupURL -DestinationDirectory $DART10destination

$SmartDefragSetupURL = "https://github.com/osdcloudcline/Software/raw/main/Utilities/IoBit/Smart%20Defrag/version%2010.0/smart-defrag-setup.exe"
$SmartDefragdestination = "C:\downloads"

Save-WebFile -SourceUrl $SmartDefragSetupURL -DestinationDirectory $SmartDefragdestination

$VMWareToolsURL = "https://packages.vmware.com/tools/releases/latest/windows/x64/VMware-tools-12.4.5-23787635-x86_64.exe"
$VMWareToolsdestination = "C:\downloads"

Save-WebFile -SourceUrl $VMWareToolsURL -DestinationDirectory $VMWareToolsdestination

If ($env:computername -eq "BTDESKTOP"){
$LianLi = Invoke-WebRequest("")
Invoke-Expression $($LianLi.Content)

}

Stop-Transcript
