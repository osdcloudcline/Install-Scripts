Write-Host '                                                                     ' -BackgroundColor White 
Write-Host '  The following nVidia GeForce RTX 4090 drivers will be downloaded:  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - GeForce RTX 40 Series Game Ready drivers, ver 560.94             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                     ' -BackgroundColor White 
pause

####################################
##  Download File URL
####################################

$GF40SeriesURL = "https://us.download.nvidia.com/Windows/560.94/560.94-desktop-win10-win11-64bit-international-dch-whql.exe"


####################################
##  Download Directory
####################################

$GeForceDownloadDir = "C:\downloads\drivers\video\RTX 4090\560.94"

Install-Module -Name OSD -Repository PSGallery -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name OSD -Force

Write-Verbose "Downloading nVidia GeForce 40 Series driver, version 560.94..." -Verbose
Save-WebFile -SourceUrl $GF40SeriesURL -DestinationDirectory $GeForceDownloadDir
