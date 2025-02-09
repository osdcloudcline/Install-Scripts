$CustomOSThemeLog = "C:\Logs\OSDCloud\Install\SYSTEM\Themes\Custom-OS-Themes.log"

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
$MCUOSThemePack5URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Movie%20Themes/MCU%20Theme%20Packs/amazing-spider-man-2.deskthemepack"
$MCUOSThemePack6URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Movie%20Themes/MCU%20Theme%20Packs/rocket-raccoon.deskthemepack"


$StarWarsOSThemePack1URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Movie%20Themes/Star%20Wars/star-wars.deskthemepack"

######################################
# Windows OS Theme Download Location
#######################################

$MCUOSThemePackDownloadDirectory = "C:\downloads\OS\Themes\MCU"
$StarWarsOSThemePackDownloadDirectory = "C:\downloads\OS\Themes\StarWars"


Write-Verbose "Processing: Acquiring Marvel Cinematic Universe Windows OS Themes" -Verbose
Write-Host

Save-WebFile -SourceUrl $MCUOSThemePack1URL -DestinationDirectory $MCUOSThemePackDownloadDirectory
Save-WebFile -SourceUrl $MCUOSThemePack2URL -DestinationDirectory $MCUOSThemePackDownloadDirectory
Save-WebFile -SourceUrl $MCUOSThemePack3URL -DestinationDirectory $MCUOSThemePackDownloadDirectory
Save-WebFile -SourceUrl $MCUOSThemePack4URL -DestinationDirectory $MCUOSThemePackDownloadDirectory
Save-WebFile -SourceUrl $MCUOSThemePack5URL -DestinationDirectory $MCUOSThemePackDownloadDirectory
Save-WebFile -SourceUrl $MCUOSThemePack6URL -DestinationDirectory $MCUOSThemePackDownloadDirectory


Write-Verbose "Completed: Download of Marvel Cinematic Universe Windows OS Themes" -Verbose
Write-Host

Write-Verbose "Processing: Acquiring Star Wars Windows OS Themes" -Verbose
Write-Host

Save-WebFile -SourceUrl $StarWarsOSThemePack1URL -DestinationDirectory $StarWarsOSThemePackDownloadDirectory

Write-Verbose "Completed: Download of Star Wars Windows OS Themes" -Verbose
Write-Host


pause

Write-Verbose "Processing: Copying OS Theme Files to C:\Windows\Resources\Themes" -Verbose
Write-Host

Copy-Item -Path "$MCUOSThemePackDownloadDirectory\*.themepack" -Destination "C:\Windows\Resources\Themes" -Recurse -Force
Copy-Item -Path "$MCUOSThemePackDownloadDirectory\*.deskthemepack" -Destination "C:\Windows\Resources\Themes" -Recurse -Force

Copy-Item -Path "$StarWarsOSThemePackDownloadDirectory\*.themepack" -Destination "C:\Windows\Resources\Themes" -Recurse -Force
Copy-Item -Path "$StarWarsOSThemePackDownloadDirectory\*.deskthemepack" -Destination "C:\Windows\Resources\Themes" -Recurse -Force

Write-Verbose "Completed: Copying OS Theme Files to C:\Windows\Resources\Themes" -Verbose
Write-Host

stop-Transcript
