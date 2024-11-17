Start-Transcript -Path "C:\Logs\Powershell\Install\Advanced\Utilities-Software\$env:computername-GlaryUtilities.log"

$Date = Get-Date

Write-Host "Installed on: $Date"

$app1 = "Glary Utilities"

Write-Host
Write-Verbose "Installing $app1..." -Verbose

winget install --id Glarysoft.GlaryUtilities --exact --accept-source-agreements  --accept-package-agreements --force

$OSDCloudGHdownloads = "C:\downloads"
$GlaryZipURL1 = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/Glary%20Utilities/GlaryUtilities1.zip"
$GlaryZipURL2 = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/Glary%20Utilities/GlaryUtilities2.zip"
$GlaryUnZipPath = "C:\downloads\GlaryUtilities"

Save-WebFile -SourceUrl $GlaryZipURL1 -DestinationDirectory $OSDCloudGHdownloads
Save-WebFile -SourceUrl $GlaryZipURL2 -DestinationDirectory $OSDCloudGHdownloads
Expand-7Zip -ArchiveFileName "$OSDCloudGHdownloads\GlaryUtilities1.zip" -TargetPath $GlaryUnZipPath 
Expand-7Zip -ArchiveFileName "$OSDCloudGHdownloads\GlaryUtilities2.zip" -TargetPath $GlaryUnZipPath 
Copy-Item -Path "C:\downloads\GlaryUtilities\*.*" -Destination "C:\Program Files (x86)\Glary Utilities" -Recurse -Force 
Stop-Process -Name Integrator.exe -Force
Stop-Process -Name MemfilesService.exe -Force
Copy-Item -Path "C:\Program Files (x86)\Glary Utilities\GlaryUtilities" -Destination "C:\Program Files (x86)\Glary Utilities" -Recurse -Force 
Remove-Item -Path "C:\Program Files (x86)\Glary Utilities\GlaryUtilities" -Force -Confirm:$false
Copy-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Glary Utilities.lnk" -Destination "C:\Users\$env:username\Desktop" -Force
Stop-Transcript
