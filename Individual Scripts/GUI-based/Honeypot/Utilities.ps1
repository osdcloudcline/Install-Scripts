$UtilitiesSoftwareInstallLog = "C:\Logs\Installs\Software\Honeypot\GUI\$env:computername-SoftwareUtilities.log"

Start-Transcript $UtilitiesSoftwareInstallLog

Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

winget install --id 7zip.7zip --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Piriform.CCleaner --exact --accept-source-agreements  --accept-source-agreements --force

winget install --id Wagnardsoft.DisplayDriverUninstaller --exact --accept-source-agreements  --accept-package-agreements --force

$SmartDefragSetupURL = "https://github.com/osdcloudcline/Software/raw/main/Utilities/IoBit/Smart%20Defrag/version%2010.0/smart-defrag-setup.exe"
$SmartDefragdestination = "C:\downloads"

Save-WebFile -SourceUrl $SmartDefragSetupURL -DestinationDirectory $SmartDefragdestination

Stop-Transcript
