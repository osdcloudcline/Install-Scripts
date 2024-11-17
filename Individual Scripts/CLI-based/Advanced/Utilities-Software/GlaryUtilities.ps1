winget install --id Glarysoft.GlaryUtilities --exact --accept-source-agreements  --accept-package-agreements --force

$OSDCloudGHdownloads = "C:\downloads"
$GlaryZipURL1 = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/Glary%20Utilities/GlaryUtilities1.zip"
$GlaryZipURL2 = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/Glary%20Utilities/GlaryUtilities2.zip"
$GlaryUnZipPath = "C:\downloads\GlaryUtilities"

Save-WebFile -SourceUrl $GlaryZipURL1 -DestinationDirectory $OSDCloudGHdownloads
Save-WebFile -SourceUrl $GlaryZipURL2 -DestinationDirectory $OSDCloudGHdownloads
Expand-7Zip -ArchiveFileName "$OSDCloudGHdownloads\GlaryUtilities1.zip" -TargetPath $GlaryUnZipPath 
Expand-7Zip -ArchiveFileName "$OSDCloudGHdownloads\GlaryUtilities2.zip" -TargetPath $GlaryUnZipPath 
Copy-Item -Path $GlaryUnZipPath -Destination "C:\Program Files (x86)\Glary Utilities" -Recurse -Force 
