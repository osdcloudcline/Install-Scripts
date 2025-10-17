# Define the path to the directory containing your .ppkg files

$ASPPpkgDirectory = "C:\Provisioning\OS\ASP"
$PSProvidersPpkgDirectory = "C:\Provisioning\OS\Package Providers"
$NETPpkgDirectory = "C:\Provisioning\OS\NET"
$OracleJREPpkgDirectory = "C:\Provisioning\OS\OracleJRE"
$SYSTEMSoftwarePpkgDirectory = "C:\Provisioning\OS\SYSTEM"
$OSDCloudPpkgDirectory = "C:\Provisioning\OSDCloud"
$PS5Modules = "C:\Provisioning\PS5-Modules"
$PS7Modules = "C:\Provisioning\PS7-Modules"


# Get all .ppkg files in the specified directory

$PS5PPKGFiles = Get-ChildItem -Path $PS5Modules -Filter "*.ppkg"
$PS7PPKGFiles = Get-ChildItem -Path $PS7Modules -Filter "*.ppkg"
$SYSTEMSoftwarePPKGFiles = Get-ChildItem -Path $SYSTEMSoftwarePpkgDirectory -Filter "*.ppkg"
$NETPPKGFiles = Get-ChildItem -Path $NETPpkgDirectory -Filter "*.ppkg"
$OracleJREFiles = Get-ChildItem -Path $OracleJREPpkgDirectory -Filter "*.ppkg"
$ASPFiles = Get-ChildItem -Path $ASPPpkgDirectory -Filter "*.ppkg"


