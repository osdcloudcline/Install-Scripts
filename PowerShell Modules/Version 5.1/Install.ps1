# Set PSGallery to Trusted once to avoid prompts during the loop
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted

# Combined arrays (Fixed missing commas in $MSGraph)

$OSD = @('OSD','OSDBuilder','OSDSUS','OSDUpdate','AutopilotOOBE','OSDDrivers','OSDEploy','OSDSoftware','OSDCatalog','OSDProgress','PSWindowsUpdate')
$OSDCloud2 = @('OSDCloud','OSDCloud.Workspace','platyPS')
$Cloud = @('OSDCloudCLI','OSDCloudGUI','OSDCloudAzure','Azure','AzureAD','Az.Accounts','Az.Storage','Az.Resources','Az.KeyVault','Az.Compute','Az.Automation','Az.Network','Az.ApiManagement','Az.Advisor','Az.AnalysisServices','Az.Billing','Az.ApplicationInsights','Az.Cdn','Az.Batch','Az.Monitor')
$MSGraph = @('Microsoft.Graph','Microsoft.Graph.Intune','Microsoft.Graph.Groups','Microsoft.Graph.Users','Microsoft.Graph.Sites','Microsoft.Graph.Mail','Microsoft.Graph.Identity.DirectoryManagement','Microsoft.Graph.Teams','Microsoft.Graph.DeviceManagement')
$VMWareVirtualization = @('AsBuiltReport.VMware.ESXi','EsxiInventoryTools','VMwareBaselineCheck','WindowsImageBuilder','vDocumentation')
$HyperVVirtualization = @('LabBuilder','Hyper-V-Backup','Hyper-V.Tools','Image-Factory','HyperVLab','AutomatedLab','Hyper-VAdministration','WindowsImageConverter')
$UbiquitiUNIFI = @('UNIFI')
$Networking = @('wifiprofilemanagement','WiFiProfileManagementDsc','WifiTools')
$OSDDeployment = @('SCClient','SCCMClientActions','SCCMStuff')
$Utilities = @('7Zip4Powershell')

# Combine all arrays into one master list
$AllModules = $OSD + $OSDCloud2 + $Cloud + $MSGraph + $VMWareVirtualization + 
               $HyperVVirtualization + $UbiquitiUNIFI + $Networking + 
               $OSDDeployment + $Utilities



foreach ($module in $AllModules){
try{
Write-Host "'nProcessing: $module PowerShell Module for installtion" -ForegroundColor Cyan
Write-Host 
        Install-Module -Name $module -Force -AllowClobber -Repository PSGallery -SkipPublisherCheck -Scope CurrentUser -Confirm:$false
Write-Host
Write-Host "Processing: $module PowerShell Module for import" -ForegroundColor Cyan
       Import-Module -Name $module -Force
Write-Host 
Write-Host "Successfully completed configuration of: $module" -ForegroundColor Green
}
    catch {
        Write-Host " Failed to process $module: $($_.Exception.Message)" -ForegroundColor Red
    }
}

