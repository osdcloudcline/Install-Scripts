$CustomOSThemeLog = "C:\Logs\OSDCloud\SYSTEM\Themes\Custom-OS-Themes.log"

Start-Transcript -Path $CustomOSThemeLog

Get-Date

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

################################################################
## Windows OS Theme Pack Download URLs
################################################################

$MCUOSThemePack1URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Movie%20Themes/MCU%20Theme%20Packs/avengers-endgame.deskthemepack"
$MCUOSThemePack2URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Movie%20Themes/MCU%20Theme%20Packs/iron-man-comics.deskthemepack"
$MCUOSThemePack3URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Movie%20Themes/MCU%20Theme%20Packs/marvel1.deskthemepack"
$MCUOSThemePack4URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Movie%20Themes/MCU%20Theme%20Packs/spider-man-no-way-home%20.deskthemepack"




######################################
# Windows OS Theme Download Location
#######################################

$MCUOSThemePackDownloadDirectory = "C:\downloads\OS\Themes\MCU"
$OSThemePackZIPDownloadDirectory = "C:\downloads\OS\Themes\ZIP"
$ExtractDir = "C:\downloads\OS\Themes\Extract"

Write-Verbose "Processing: Acquiring Marvel Cinematic Universe Windows OS Themes" -Verbose
Write-Host

Save-WebFile -SourceUrl $MCUOSThemePack1URL -DestinationDirectory $MCUOSThemePackDownloadDirectory
Save-WebFile -SourceUrl $MCUOSThemePack2URL -DestinationDirectory $MCUOSThemePackDownloadDirectory
Save-WebFile -SourceUrl $MCUOSThemePack3URL -DestinationDirectory $MCUOSThemePackDownloadDirectory
Save-WebFile -SourceUrl $MCUOSThemePack4URL -DestinationDirectory $MCUOSThemePackDownloadDirectory

Write-Verbose "Completed: Download of Marvel Cinematic Universe Windows OS Themes" -Verbose
Write-Host

Write-Verbose "Processing: Acquiring Star Wars Windows OS Themes" -Verbose
Write-Host



Write-Verbose "Completed: Download of Star Wars Windows OS Themes" -Verbose
Write-Host

Write-Verbose "Processing: Extracting ZIP Files" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$OSThemePackZIPDownloadDirectory\BingMapsEurope.zip.001" -TargetPath $ExtractDir -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OSThemePackZIPDownloadDirectory\BingMapsEurope.zip.002" -TargetPath $ExtractDir -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OSThemePackZIPDownloadDirectory\BingMapsUnitedStates.zip.001" -TargetPath $ExtractDir -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OSThemePackZIPDownloadDirectory\BingMapsUnitedStates.zip.002" -TargetPath $ExtractDir -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OSThemePackZIPDownloadDirectory\BingMapsUnitedStates.zip.003" -TargetPath $ExtractDir -ErrorAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$OSThemePackZIPDownloadDirectory\CommunityShowcaseAqua3.zip.001" -TargetPath $ExtractDir -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OSThemePackZIPDownloadDirectory\CommunityShowcaseAqua3.zip.002" -TargetPath $ExtractDir -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OSThemePackZIPDownloadDirectory\CommunityShowcaseAqua3.zip.003" -TargetPath $ExtractDir -ErrorAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$OSThemePackZIPDownloadDirectory\CommunityShowcaseAqua4.zip.001" -TargetPath $ExtractDir -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OSThemePackZIPDownloadDirectory\CommunityShowcaseAqua4.zip.002" -TargetPath $ExtractDir -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OSThemePackZIPDownloadDirectory\CommunityShowcaseAqua4.zip.003" -TargetPath $ExtractDir -ErrorAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$OSThemePackZIPDownloadDirectory\PanoramasEurope.zip.001" -TargetPath $ExtractDir -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OSThemePackZIPDownloadDirectory\PanoramasEurope.zip.002" -TargetPath $ExtractDir -ErrorAction SilentlyContinue 

Write-Verbose "Completed: Extracting ZIP Files" -Verbose
Write-Host

Write-Verbose "Processing: Copying Extracted OS Theme Files" -Verbose
Write-Host

Copy-Item -Path "$ExtractDir\BingMapsEurope.themepack" -Destination $OSThemePackDownloadDirectory -Force
Copy-Item -Path "$ExtractDir\BingMapsUnitedStates.themepack" -Destination $OSThemePackDownloadDirectory -Force
Copy-Item -Path "$ExtractDir\CommunityShowcaseAqua3.themepack" -Destination $OSThemePackDownloadDirectory -Force
Copy-Item -Path "$ExtractDir\CommunityShowcaseAqua4.themepack" -Destination $OSThemePackDownloadDirectory -Force
Copy-Item -Path "$ExtractDir\PanoramasEurope.deskthemepack" -Destination $OSThemePackDownloadDirectory -Force

Write-Verbose "Completed: Copying Extracted OS Theme Files" -Verbose
Write-Host

pause

Write-Verbose "Processing: Copying OS Theme Files to C:\Windows\Resources\Themes" -Verbose
Write-Host

Copy-Item -Path "$OSThemePackDownloadDirectory\*.themepack" -Destination "C:\Windows\Resources\Themes" -Recurse -Force
Copy-Item -Path "$OSThemePackDownloadDirectory\*.deskthemepack" -Destination "C:\Windows\Resources\Themes" -Recurse -Force

Write-Verbose "Completed: Copying OS Theme Files to C:\Windows\Resources\Themes" -Verbose
Write-Host

stop-Transcript
