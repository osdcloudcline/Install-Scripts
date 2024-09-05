$ProductivityInstallLog = "C:\Logs\Installs\Software\Advanced\GUI\$env:computername-Productivity.log"

Start-Transcript -Path $ProductivityInstallLog

winget install --id Adobe.Acrobat.Reader.64-bit --exact --accept-source-agreements  --accept-source-agreements --force

$OfficeGHdownloads = "C:\downloads\Office" 
mkdir $OfficeGHdownloads
$Office2021FilesUrl = "https://github.com/osdcloudcline/Software/raw/main/Productivity/Microsoft/Office%202021/OSDCloud-Office2021.zip"
Save-WebFile -SourceUrl $Office2021FilesUrl -DestinationDirectory $OfficeGHdownloads

$O21DLCMD = "C:\downloads\Office\OfficeCDNDownload.cmd"
Start-Process -FilePath $O21DLCMD

winget install --id 9WZDNCRD29V9 --source msstore

Expand-Archive -Path "$OfficeGHdownloads\OSDCloud-Office2021.zip" -DestinationPath $OfficeGHdownloads

winget install --id Microsoft.Office --exact --accept-source-agreements  --accept-source-agreements --force

$O21SetupCMD = "C:\downloads\Office\OfficeCDNSetup.cmd"
Start-Process -FilePath $O21SetupCMD

Stop-Transcript
