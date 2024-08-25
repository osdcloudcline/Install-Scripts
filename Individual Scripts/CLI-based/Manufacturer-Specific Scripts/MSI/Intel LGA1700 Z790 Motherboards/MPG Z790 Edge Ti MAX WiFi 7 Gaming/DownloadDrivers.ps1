Write-Host '                                                                                                           ' -BackgroundColor White 
Write-Host '  The following MSI Intel LGA 1700 MPG Z-790 Edge Ti WiFi 7 Gaming motherboard drivers will be downloaded: ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Onboard and dedicated Audio Drivers                                                                    ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Onboard Video Drivers                                                                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Onboard Network Card Drivers                                                                           ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Storage Drivers                                                                                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - System and Chipset Drivers                                                                             ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Printer Drivers                                                                                        ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '  - Latest UEFI BIOS File                                                                                  ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host '                                                                                                           ' -BackgroundColor White 

####################################
##  Download File URLs 
####################################


### Onboard Audio

$OnboardAudio1URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Audio/On-board/MSI-USB-Audio-FW-Update-Tool_INTEL.zip"
$OnboardAudio2URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Audio/On-board/realtek_audio_USB_R.zip"

### Onboard Video

$OnboardVideo1URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.001"
$OnboardVideo2URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.002"
$OnboardVideo3URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.003"
$OnboardVideo4URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.004"
$OnboardVideo5URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.005"
$OnboardVideo6URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.006"
$OnboardVideo7URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.007"
$OnboardVideo8URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.008"
$OnboardVideo9URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.009"
$OnboardVideo10URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.010"
$OnboardVideo11URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.011"
$OnboardVideo12URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.012"
$OnboardVideo13URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.013"
$OnboardVideo14URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.014"
$OnboardVideo15URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.015"
$OnboardVideo16URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.016"
$OnboardVideo17URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.017"
$OnboardVideo18URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.018"
$OnboardVideo19URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.019"
$OnboardVideo20URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.020"
$OnboardVideo21URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.021"
$OnboardVideo22URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.022"
$OnboardVideo23URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.023"
$OnboardVideo24URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.024"
$OnboardVideo25URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.025"
$OnboardVideo26URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.026"
$OnboardVideo27URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Graphics.zip.027"
$OnboardVideo28URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Intel%20VGA%20Driver_31.0.101.4255.zip.001"
$OnboardVideo29URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Intel%20VGA%20Driver_31.0.101.4255.zip.002"
$OnboardVideo30URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Intel%20VGA%20Driver_31.0.101.4255.zip.003"
$OnboardVideo31URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Video/On-Board/Intel%20VGA%20Driver_31.0.101.4255.zip.004"


### Onboard Network Card
$OnboardNIC1URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Network/Intel_Network_inf_w11.zip"
$OnboardNIC2URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Network/qualcomm_ncm865_bt.zip"
$OnboardNIC3URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Network/qualcomm_ncm865_wifi.zip"

### Storage Drivers

$Storage1URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Storage/intel_rst_19.5.zip"

### System and Chipset Drivers

$SystemChipset1URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/System%20and%20Chipset/10.1.19627.8423/intel_chipset_adl_rpl.zip"

### Printer Drivers


### Dedicated Audio card

$SoundBlasterAudio1URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Audio/SoundBlaster%20AE-7/AECMDMasterInstaller_3.4.92.00.zip.001"
$SoundBlasterAudio2URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Audio/SoundBlaster%20AE-7/AECMDMasterInstaller_3.4.92.00.zip.002"
$SoundBlasterAudio3URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Audio/SoundBlaster%20AE-7/AECMDMasterInstaller_3.4.92.00.zip.003"
$SoundBlasterAudio4URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Audio/SoundBlaster%20AE-7/AECMDMasterInstaller_3.4.92.00.zip.004"
$SoundBlasterAudio5URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Audio/SoundBlaster%20AE-7/AECMDMasterInstaller_3.4.92.00.zip.005"
$SoundBlasterAudio6URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Audio/SoundBlaster%20AE-7/AECMDMasterInstaller_3.4.92.00.zip.006"
$SoundBlasterAudio7URL = "https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/Install%20/Manufacturer%20Specific/MSI/Motherboards/Intel/LGA%201700/Z790%20Chipsets/MPG%20Z790%20Edge%20Ti%20MAX%20WiFi%207%20Gaming%20/Drivers/Audio/SoundBlaster%20AE-7/AECMDMasterInstaller_3.4.92.00.zip.007"

### Monitor Drivers


#################################################
##  Extraction Locations
#################################################
