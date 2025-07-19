$JimLog = "C:\Logs\JimPC.log"

Start-Transcript - Path $JimLog

Write-Verbose "Processing: PowerShell Package Providers on $env:computername..." -Verbose

Install-PackageProvider -Name NuGet -Force
Install-PackageProvider -Name PowerShellGet -Force
Install-PackageProvider -Name ChocolateyGet -Force
Install-PackageProvider -Name WinGet -Force
winget install --id Chocolatey.Chocolatey --silent --exact --accept-source-agreements --accept-source-agreements --force --source winget

Write-Host
Write-Verbose "Processing: Registry Entries on $env:computername..." -Verbose

if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\001-NormalMode") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\001-NormalMode" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\001-NormalMode\command") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\001-NormalMode\command" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\002-SafeMode") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\002-SafeMode" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\002-SafeMode\command") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\002-SafeMode\command" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\003-SafeModeNetworking") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\003-SafeModeNetworking" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\003-SafeModeNetworking\command") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\003-SafeModeNetworking\command" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\004-SafeModeCommandPrompt") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\004-SafeModeCommandPrompt" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\004-SafeModeCommandPrompt\command") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\004-SafeModeCommandPrompt\command" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode' -Name 'icon' -Value 'bootux.dll,-1032' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode' -Name 'MUIVerb' -Value 'Safe Mode' -PropertyType String -Force -ea SilentlyContinue;
Remove-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode' -Name 'Position' -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode' -Name 'SubCommands' -Value '' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\001-NormalMode' -Name '(default)' -Value 'Restart in Normal Mode' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\001-NormalMode' -Name 'HasLUAShield' -Value '' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\001-NormalMode\command' -Name '(default)' -Value 'powershell -windowstyle hidden -command "Start-Process cmd -ArgumentList '/s,/c,bcdedit /deletevalue {current} safeboot & bcdedit /deletevalue {current} safebootalternateshell & shutdown -r -t 00 -f' -Verb runAs"' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\002-SafeMode' -Name '(default)' -Value 'Restart in Safe Mode' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\002-SafeMode' -Name 'HasLUAShield' -Value '' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\002-SafeMode\command' -Name '(default)' -Value 'powershell -windowstyle hidden -command "Start-Process cmd -ArgumentList '/s,/c,bcdedit /set {current} safeboot minimal & bcdedit /deletevalue {current} safebootalternateshell & shutdown -r -t 00 -f' -Verb runAs"' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\003-SafeModeNetworking' -Name '(default)' -Value 'Restart in Safe Mode with Networking' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\003-SafeModeNetworking' -Name 'HasLUAShield' -Value '' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\003-SafeModeNetworking\command' -Name '(default)' -Value 'powershell -windowstyle hidden -command "Start-Process cmd -ArgumentList '/s,/c,bcdedit /set {current} safeboot network & bcdedit /deletevalue {current} safebootalternateshell & shutdown -r -t 00 -f' -Verb runAs"' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\004-SafeModeCommandPrompt' -Name '(default)' -Value 'Restart in Safe Mode with Command Prompt' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\004-SafeModeCommandPrompt' -Name 'HasLUAShield' -Value '' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\SafeMode\shell\004-SafeModeCommandPrompt\command' -Name '(default)' -Value 'powershell -windowstyle hidden -command "Start-Process cmd -ArgumentList '/s,/c,bcdedit /set {current} safeboot minimal & bcdedit /set {current} safebootalternateshell yes & shutdown -r -t 00 -f' -Verb runAs"' -PropertyType String -Force -ea SilentlyContinue;

if((Test-Path -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cServices") -ne $true) {  New-Item "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cServices" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cServices' -Name 'bToggleAdobeDocumentServices' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;

if((Test-Path -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat") -ne $true) {  New-Item "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC") -ne $true) {  New-Item "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown") -ne $true) {  New-Item "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cCloud") -ne $true) {  New-Item "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cCloud" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cDefaultExecMenuItems") -ne $true) {  New-Item "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cDefaultExecMenuItems" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cDefaultFindAttachmentPerms") -ne $true) {  New-Item "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cDefaultFindAttachmentPerms" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cDefaultLaunchAttachmentPerms") -ne $true) {  New-Item "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cDefaultLaunchAttachmentPerms" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cDefaultLaunchURLPerms") -ne $true) {  New-Item "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cDefaultLaunchURLPerms" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cIPM") -ne $true) {  New-Item "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cIPM" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cServices") -ne $true) {  New-Item "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cServices" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cSharePoint") -ne $true) {  New-Item "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cSharePoint" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cWebmailProfiles") -ne $true) {  New-Item "HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cWebmailProfiles" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown' -Name 'bToggleAdobeSign' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown' -Name 'bSuppressSignOut' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown' -Name 'bUsageMeasurement' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown' -Name 'bUpdater' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cCloud' -Name 'bEnableAcrobatHS' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cDefaultExecMenuItems' -Name 'tWhiteList' -Value 'Close|GeneralInfo|Quit|FirstPage|PrevPage|NextPage|LastPage|ActualSize|FitPage|FitWidth|FitHeight|SinglePage|OneColumn|TwoPages|TwoColumns|ZoomViewIn|ZoomViewOut|ShowHideBookmarks|ShowHideThumbnails|Print|GoToPage|ZoomTo|GeneralPrefs|SaveAs|FullScreenMode|OpenOrganizer|Scan|Web2PDF:OpnURL|AcroSendMail:SendMail|Spelling:Check Spelling|PageSetup|Find|FindSearch|GoBack|GoForward|FitVisible|ShowHideArticles|ShowHideFileAttachment|ShowHideAnnotManager|ShowHideFields|ShowHideOptCont|ShowHideModelTree|ShowHideSignatures|InsertPages|ExtractPages|ReplacePages|DeletePages|CropPages|RotatePages|AddFileAttachment|FindCurrentBookmark|BookmarkShowLocation|GoBackDoc|GoForwardDoc|DocHelpUserGuide|HelpReader|rolReadPage|HandMenuItem|ZoomDragMenuItem|CollectionPreview|CollectionHome|CollectionDetails|CollectionShowRoot|&Pages|Co&ntent|&Forms|Action &Wizard|Recognize &Text|P&rotection|&Sign && Certify|Doc&ument Processing|Print Pro&duction|Ja&vaScript|&Accessibility|Analy&ze|&Annotations|D&rawing Markups|Revie&w' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cDefaultFindAttachmentPerms' -Name 'tSearchAttachmentsWhiteList' -Value '3g2|3gp|3gpp|3gpp2|aac|ac3|aif|aiff|ani|asf|avi|bmp|cdr|cur|divx|djvu|doc|docx|dv|emf|eps|flv|f4v|gif|ico|iff|jbig2|jp2|jpeg|jpg|m2v|m4a|m4b|m4p|m4v|mid|mkv|mov|mpa|mp2|mp3|mp4|mts|nsv|ogg|ogm|ogv|pbm|pgm|png|ppm|ppt|pptx|ps|psd|qt|rtf|riff|svg|tif|ts|txt|ram|rm|rmvb|vob|wav|wma|wmf|wmv|xmb|xls|xlsx' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cDefaultLaunchAttachmentPerms' -Name 'tBuiltInPermList' -Value 'version:1|.ade:3|.adp:3|.app:3|.arc:3|.arj:3|.asp:3|.bas:3|.bat:3|.bz:3|.bz2:3|.cab:3|.chm:3|.class:3|.cmd:3|.com:3|.command:3|.cpl:3|.crt:3|.csh:3|.desktop:3|.dll:3|.exe:3|.fxp:3|.gz:3|.hex:3|.hlp:3|.hqx:3|.hta:3|.inf:3|.ini:3|.ins:3|.isp:3|.its:3|.job:3|.js:3|.jse:3|.ksh:3|.lnk:3|.lzh:3|.mad:3|.maf:3|.mag:3|.mam:3|.maq:3|.mar:3|.mas:3|.mat:3|.mau:3|.mav:3|.maw:3|.mda:3|.mdb:3|.mde:3|.mdt:3|.mdw:3|.mdz:3|.msc:3|.msi:3|.msp:3|.mst:3|.ocx:3|.ops:3|.pcd:3|.pi:3|.pif:3|.prf:3|.prg:3|.pst:3|.rar:3|.reg:3|.scf:3|.scr:3|.sct:3|.sea:3|.shb:3|.shs:3|.sit:3|.tar:3|.taz:3|.tgz:3|.tmp:3|.url:3|.vb:3|.vbe:3|.vbs:3|.vsmacros:3|.vss:3|.vst:3|.vsw:3|.webloc:3|.ws:3|.wsc:3|.wsf:3|.wsh:3|.z:3|.zip:3|.zlo:3|.zoo:3|.pdf:2|.fdf:2|.jar:3|.pkg:3|.tool:3|.term:3|.acm:3|.asa:3|.aspx:3|.ax:3|.ad:3|.application:3|.asx:3|.cer:3|.cfg:3|.chi:3|.class:3|.clb:3|.cnt:3|.cnv:3|.cpx:3|.crx:3|.der:3|.drv:3|.fon:3|.gadget:3|.grp:3|.htt:3|.ime:3|.jnlp:3|.local:3|.manifest:3|.mmc:3|.mof:3|.msh:3|.msh1:3|.msh2:3|.mshxml:3|.msh1xml:3|.msh2xml:3|.mui:3|.nls:3|.pl:3|.perl:3|.plg:3|.ps1:3|.ps2:3|.ps1xml:3|.ps2xml:3|.psc1:3|.psc2:3|.py:3|.pyc:3|.pyo:3|.pyd:3|.rb:3|.sys:3|.tlb:3|.tsp:3|.xbap:3|.xnk:3|.xpi:3|.air:3|.appref-ms:3|.desklink:3|.glk:3|.library-ms:3|.mapimail:3|.mydocs:3|.sct:3|.search-ms:3|.searchConnector-ms:3|.vxd:3|.website:3|.zfsendtotarget:3' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cDefaultLaunchURLPerms' -Name 'tSchemePerms' -Value 'version:2|shell:3|hcp:3|ms-help:3|ms-its:3|ms-itss:3|its:3|mk:3|mhtml:3|help:3|disk:3|afp:3|disks:3|telnet:3|ssh:3|acrobat:2|mailto:2|file:1|rlogin:3|javascript:4|data:3|jar:3|vbscript:3' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cDefaultLaunchURLPerms' -Name 'tSponsoredContentSchemeWhiteList' -Value 'http|https' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cDefaultLaunchURLPerms' -Name 'tFlashContentSchemeWhiteList' -Value 'http|https|ftp|rtmp|rtmpe|rtmpt|rtmpte|rtmps|mailto' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cIPM' -Name 'bShowMsgAtLaunch' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cServices' -Name 'bToggleSendAndTrack' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cServices' -Name 'bTogglePrefsSync' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cServices' -Name 'bToggleFillSign' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cServices' -Name 'bToggleAdobeSign' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cServices' -Name 'bToggleWebConnectors' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cServices' -Name 'bToggleAdobeDocumentServices' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cServices' -Name 'bToggleDocumentCloud' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cServices' -Name 'bToggleUpdater' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cServices' -Name 'bBoxConnectorEnabled' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cServices' -Name 'bDropBoxConnectorEnabled' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cServices' -Name 'bOneDriveConnectorEnabled' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cServices' -Name 'bGoogleDriveConnectorEnabled' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cSharePoint' -Name 'bDisableSharePointFeatures' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\WOW6432Node\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cWebmailProfiles' -Name 'bDisableWebmail' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;

if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE' -Name 'BypassNRO' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;

if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\Check for Updates") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\Check for Updates" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\Check for Updates\command") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\Check for Updates\command" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\Check for Updates' -Name 'SettingsURI' -Value 'ms-settings:windowsupdate' -PropertyType String -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\DesktopBackground\Shell\Check for Updates\command' -Name 'DelegateExecute' -Value '{556FF0D6-A1EE-49E5-9FA4-90AE116AD744}' -PropertyType String -Force -ea SilentlyContinue;

if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\CopyTo") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\CopyTo" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\CopyTo' -Name '(default)' -Value '{C2FBB630-2971-11D1-A18C-00C04FD75D13}' -PropertyType String -Force -ea SilentlyContinue;

if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\MoveTo") -ne $true) {  New-Item "HKLM:\SOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\MoveTo" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\MoveTo' -Name '(default)' -Value '{C2FBB631-2971-11D1-A18C-00C04FD75D13}' -PropertyType String -Force -ea SilentlyContinue;

if((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\BitLocker") -ne $true) {  New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\BitLocker" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\BitLocker' -Name 'PreventDeviceEncryption' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;

if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -Name 'DisableAntiSpyware' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;

if((Test-Path -LiteralPath "HKLM:\Software\Policies\Microsoft\Windows\WindowsAI") -ne $true) {  New-Item "HKLM:\Software\Policies\Microsoft\Windows\WindowsAI" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\WindowsAI' -Name 'DisableAIDataAnalysis' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;

if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Sudo") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Sudo" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Sudo' -Name 'Enabled' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;

if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System") -ne $true) {  New-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'verbosestatus' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;

if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel' -Name '{018D5C66-4533-4307-9B53-224DE2ED1FE6}' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel' -Name '{20D04FE0-3AEA-1069-A2D8-08002B30309D}' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel' -Name '{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel' -Name '{59031a47-3f72-44a7-89c5-5595fe6b30ee}' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel' -Name '{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;

if((Test-Path -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl") -ne $true) {  New-Item "HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl' -Name 'AutoReboot' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;

if((Test-Path -LiteralPath "HKCU:\Software\Policies\Microsoft\Windows\Explorer") -ne $true) {  New-Item "HKCU:\Software\Policies\Microsoft\Windows\Explorer" -force -ea SilentlyContinue };
if((Test-Path -LiteralPath "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer") -ne $true) {  New-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -force -ea SilentlyContinue };
Remove-ItemProperty -LiteralPath 'HKCU:\Software\Policies\Microsoft\Windows\Explorer' -Name 'HideRecommendedSection' -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer' -Name 'HideRecommendedSection' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;

if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'Start_SearchFiles' -Value 2 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ServerAdminUI' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'Hidden' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowCompColor' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'HideFileExt' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'DontPrettyPath' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowInfoTip' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'HideIcons' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'MapNetDrvBtn' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'WebView' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'Filter' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowSuperHidden' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'SeparateProcess' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'AutoCheckSelect' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'IconsOnly' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowTypeOverlay' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowStatusBar' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ListviewAlphaSelect' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ListviewShadow' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarAnimations' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarSizeMove' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'DisablePreviewDesktop' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarSmallIcons' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarGlomLevel' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'MMTaskbarGlomLevel' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarAutoHideInTabletMode' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShellMigrationLevel' -Value 3 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarMn' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'StartMigratedBrowserPin' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ReindexedProfile' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'StartMenuInit' -Value 13 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'WinXMigrationLevel' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarStateLastRun' -Value ([byte[]](0x8a,0xe6,0x38,0x66,0x00,0x00,0x00,0x00)) -PropertyType Binary -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'StartShownOnUpgrade' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarAl' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowTaskViewButton' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarDa' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'Start_TrackDocs' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'LaunchTo' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'Start_Layout' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShellViewReentered' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'NavPaneShowAllCloudStates' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'Start_IrisRecommendations' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;

Write-Host
Write-Verbose "Processing: System Software on $env:computername..." -Verbose

winget install --id Microsoft.DotNet.SDK.8 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.AspNetCore.3_1 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.AspNetCore.5 --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.DotNet.AspNetCore.6 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.AspNetCore.7 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.AspNetCore.8 --exact --accept-source-agreements --accept-source-agreements --force

winget install --id  Microsoft.DotNet.Runtime.3_1 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.Runtime.5 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.Runtime.6 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.Runtime.7 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.Runtime.8 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.DotNet.Runtime.9 --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Microsoft.VCRedist.2005.x64 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.VCRedist.2005.x86 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.VCRedist.2008.x64 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.VCRedist.2008.x86 --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.VCRedist.2010.x64 --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.VCRedist.2010.x86 --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.VCRedist.2012.x64 --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.VCRedist.2012.x86 --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.VCRedist.2013.x64 --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Microsoft.VCRedist.2013.x86 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.VCRedist.2015+.x64 --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.VCRedist.2015+.x86  --exact --accept-source-agreements --accept-source-agreements --force
choco install vcredist2017 -y

winget install --id Oracle.JavaRuntimeEnvironment --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Microsoft.XNARedist --exact --accept-source-agreements --accept-source-agreements --force

choco install openal -y

winget install --id Microsoft.Edge --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.EdgeDriver --exact --accept-source-agreements --accept-source-agreements --force

winget install --id Microsoft.WindowsTerminal --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.PowerShell --exact --accept-source-agreements --accept-source-agreements --force

Write-Host
Write-Verbose "Processing: Web Browsers on $env:computername..." -Verbose

winget install --id Google.Chrome --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Mozilla.Firefox --exact --accept-source-agreements --accept-source-agreements --force

Write-Host
Write-Verbose "Processing: Cloud Drives on $env:computername..." -Verbose

winget install --id Microsoft.OneDrive --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Apple.iCloud --exact --accept-source-agreements --accept-source-agreements --force

Write-Host
Write-Verbose "Processing: Media Software on $env:computername..." -Verbose

winget install --id XBMCFoundation.Kodi  --exact --accept-source-agreements --accept-source-agreements --force
winget install --id MoritzBunkus.MKVToolNix --exact --accept-source-agreements --accept-source-agreements --force
winget install --id MediaArea.MediaInfo.GUI --exact --accept-source-agreements --accept-source-agreements --force
winget install --id VideoLAN.VLC --exact --accept-source-agreements --accept-source-agreements --force


Write-Host
Write-Verbose "Processing: Productivity software on $env:computername..." -Verbose

winget install --id Adobe.Acrobat.Reader.64-bit --exact --accept-source-agreements --accept-source-agreements --force

Write-Host
Write-Verbose "Processing: Hardware Utilities - Software on $env:computername..." -Verbose

winget install --id Crucial.StorageExecutive --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Logitech.Options --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Logitech.UnifyingSoftware --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Microsoft.MouseandKeyboardCenter --exact --accept-source-agreements --accept-source-agreements --force
winget install --id Samsung.SamsungMagician --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id WesternDigital.Dashboard --exact --accept-source-agreements --accept-source-agreements --force 

Write-Host
Write-Verbose "Processing: Utilities - Software on $env:computername..." -Verbose

winget install --id 7zip.7zip --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Piriform.CCleaner --exact --accept-source-agreements --accept-source-agreements --force 
winget install --id Wagnardsoft.DisplayDriverUninstaller --exact --accept-source-agreements --accept-source-agreements --force 

Write-Host
Write-Verbose "Processing: Installing PowerShell Modules on $env:computername..." -Verbose

Install-Module -Name OSD -Force
Import-Module -Name OSD -Force

Install-Module -Name 7Zip4Powershell -Force
Import-Module -Name 7Zip4Powershell -Force

Install-Module -Name PSWindowsUpdate -Force
Import-Module -Name PSWindowsUpdate -Force

$scanstateURL1 = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/USMT/scanstate1.zip"
$scanstateURL2 = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/USMT/scanstate2.zip"
$scanstateURL3 = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/USMT/scanstate3.zip"
$scanstateURL4 = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/USMT/scanstate4.zip"

$USMTdestination = "C:\downloads"

$USMTDestination = "C:\USMT"

Write-Host
Write-Verbose "Processing: Acquiring USMT Scanstate on $env:computername..." -Verbose

Save-WebFile -SourceUrl $scanstateURL1 -DestinationDirectory $USMTdestination
Save-WebFile -SourceUrl $scanstateURL2 -DestinationDirectory $USMTdestination
Save-WebFile -SourceUrl $scanstateURL3 -DestinationDirectory $USMTdestination
Save-WebFile -SourceUrl $scanstateURL4 -DestinationDirectory $USMTdestination

Expand-7Zip -ArchiveFileName "$USMTdestination\scanstate1.zip" -TargetPath $USMTDestination
Expand-7Zip -ArchiveFileName "$USMTdestination\scanstate2.zip" -TargetPath $USMTDestination
Expand-7Zip -ArchiveFileName "$USMTdestination\scanstate3.zip" -TargetPath $USMTDestination
Expand-7Zip -ArchiveFileName "$USMTdestination\scanstate4.zip" -TargetPath $USMTDestination

Write-Host
Write-Verbose "Processing: Office 2024 on $env:computername..." -Verbose

$OfficeGHdownloads = "C:\Office\2024" 
mkdir $OfficeGHdownloads
$Office2024Files1Url = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Productivity/Microsoft/Office%202024/Configuration-Office2024-EntireSuiteVL.xml"
$Office2024Files2Url = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Productivity/Microsoft/Office%202024/officedeploymenttool_18227-20162.exe"
$Office2024Files3Url = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Productivity/Microsoft/Office%202024/setup.exe"

Save-WebFile -SourceUrl $Office2024Files1Url -DestinationDirectory $OfficeGHdownloads
Save-WebFile -SourceUrl $Office2024Files2Url -DestinationDirectory $OfficeGHdownloads
Save-WebFile -SourceUrl $Office2024Files3Url -DestinationDirectory $OfficeGHdownloads

cd $OfficeGHdownloads

$setup = "C:\Office\2024\setup.exe"
$arguments = "/configure C:\Office\2024\Configuration-Office2024-EntireSuiteVL.xml"

Start-Process -FilePath $setup -ArgumentList $arguments

Write-Host
Write-Verbose "Processing: MS DaRT on $env:computername..." -Verbose

$destination = "C:\downloads"
$DART = "https://github.com/osdcloudcline/Software/raw/refs/heads/main/Utilities/DaRT/version%2010.0%20x64/MSDaRT100.msi"
Save-WebFile -SourceUrl $DART -DestinationDirectory $destination

Write-Host
Write-Verbose "Processing: Malwarebytes on $env:computername..." -Verbose 

winget install --id Malwarebytes.Malwarebytes --silent --exact --accept-source-agreements --accept-source-agreements --force

Write-Host
Write-Verbose "Processing: OS Updates on $env:computername..." -Verbose

Install-WindowsUpdate -AcceptAll

Stop-Transcript
