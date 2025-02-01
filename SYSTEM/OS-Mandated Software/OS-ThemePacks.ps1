$OSThemeLog = ""

Start-Transcript -Path $OSThemeLog

Get-Date

Import-Module -Name OSD -Force
Import-Module -Name 7Zip4Powershell -Force

################################################################
## Windows OS Theme Pack Download URLs
################################################################

$OSThemePack1URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/26Creative.themepack"
$OSThemePack2URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/AbstractsBright.themepack"
$OSThemePack3URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/AbstractsDark.themepack"
$OSThemePack4URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/AfricanWildlife.themepack"
$OSThemePack5URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/AgeOfEmpiresOnline.themepack"
$OSThemePack6URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Akrapovic.themepack"
$OSThemePack7URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/AkrapovicMorsus.themepack"
$OSThemePack8URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/AlanWake.themepack"
$OSThemePack9URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/AlaskanLandscapesKyleWaters.themepack"
$OSThemePack10URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/AnHsinPuTzu.themepack"
$OSThemePack11URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/AncientEgypt.themepack"
$OSThemePack12URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/AngryBirds.themepack"
$OSThemePack13URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/AsusIntelIncredible.themepack"
$OSThemePack14URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/AsusIntelIncredible2.themepack"
$OSThemePack15URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/AucklandOneTreeHillIanRushton.themepack"
$OSThemePack16URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/AuroraBorealis.themepack"
$OSThemePack17URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/AustinBotanicalGardenAmyAlderman.themepack"
$OSThemePack18URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/AustralianLandscapes%20IanJohnson.themepack"
$OSThemePack19URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/AustralianShoresAntonGorlin.themepack"
$OSThemePack20URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/BakeHouse.themepack"
$OSThemePack21URL = ""
$OSThemePack22URL = ""
$OSThemePack23URL = ""
$OSThemePack24URL = ""
$OSThemePack25URL = ""
$OSThemePack26URL = ""
$OSThemePack27URL = ""
$OSThemePack28URL = ""
$OSThemePack29URL = ""
$OSThemePack30URL = ""
$OSThemePack31URL = ""
$OSThemePack32URL = ""
$OSThemePack33URL = ""
$OSThemePack34URL = ""
$OSThemePack35URL = ""
$OSThemePack36URL = ""
$OSThemePack37URL = ""
$OSThemePack38URL = ""
$OSThemePack39URL = ""
$OSThemePack40URL = ""
$OSThemePack41URL = ""
$OSThemePack42URL = ""
$OSThemePack43URL = ""
$OSThemePack44URL = ""
$OSThemePack45URL = ""
$OSThemePack46URL = ""
$OSThemePack47URL = ""
$OSThemePack48URL = ""
$OSThemePack49URL = ""
$OSThemePack50URL = ""
$OSThemePack51URL = ""
$OSThemePack52URL = ""
$OSThemePack53URL = ""
$OSThemePack54URL = ""
$OSThemePack55URL = ""
$OSThemePack56URL = ""
$OSThemePack57URL = ""
$OSThemePack58URL = ""
$OSThemePack59URL = ""
$OSThemePack60URL = ""
$OSThemePack61URL = ""
$OSThemePack62URL = ""
$OSThemePack63URL = ""
$OSThemePack64URL = ""
$OSThemePack65URL = ""
$OSThemePack66URL = ""
$OSThemePack67URL = ""
$OSThemePack68URL = ""
$OSThemePack69URL = ""
$OSThemePack70URL = ""
$OSThemePack71URL = ""
$OSThemePack72URL = ""
$OSThemePack73URL = ""
$OSThemePack74URL = ""
$OSThemePack75URL = ""
$OSThemePack76URL = ""
$OSThemePack77URL = ""
$OSThemePack78URL = ""
$OSThemePack79URL = ""
$OSThemePack80URL = ""
$OSThemePack81URL = ""
$OSThemePack82URL = ""
$OSThemePack83URL = ""
$OSThemePack84URL = ""
$OSThemePack85URL = ""
$OSThemePack86URL = ""
$OSThemePack87URL = ""
$OSThemePack88URL = ""
$OSThemePack89URL = ""
$OSThemePack90URL = ""
$OSThemePack91URL = ""
$OSThemePack92URL = ""
$OSThemePack93URL = ""
$OSThemePack94URL = ""
$OSThemePack95URL = ""
$OSThemePack96URL = ""
$OSThemePack97URL = ""
$OSThemePack98URL = ""
$OSThemePack99URL = ""
$OSThemePack100URL = ""
$OSThemePack101URL = ""
$OSThemePack102URL = ""
$OSThemePack103URL = ""
$OSThemePack104URL = ""
$OSThemePack105URL = ""
$OSThemePack106URL = ""
$OSThemePack107URL = ""
$OSThemePack108URL = ""
$OSThemePack109URL = ""
$OSThemePack110URL = ""
$OSThemePack111URL = ""
$OSThemePack112URL = ""
$OSThemePack113URL = ""
$OSThemePack114URL = ""
$OSThemePack115URL = ""
$OSThemePack116URL = ""
$OSThemePack117URL = ""
$OSThemePack118URL = ""
$OSThemePack119URL = ""
$OSThemePack120URL = ""
$OSThemePack121URL = ""
$OSThemePack122URL = ""
$OSThemePack123URL = ""
$OSThemePack124URL = ""
$OSThemePack125URL = ""
$OSThemePack126URL = ""
$OSThemePack127URL = ""
$OSThemePack128URL = ""
$OSThemePack129URL = ""
$OSThemePack130URL = ""
$OSThemePack131URL = ""
$OSThemePack132URL = ""
$OSThemePack133URL = ""
$OSThemePack134URL = ""
$OSThemePack135URL = ""
$OSThemePack136URL = ""
$OSThemePack137URL = ""
$OSThemePack138URL = ""
$OSThemePack139URL = ""
$OSThemePack140URL = ""
$OSThemePack141URL = ""
$OSThemePack142URL = ""
$OSThemePack143URL = ""
$OSThemePack144URL = ""
$OSThemePack145URL = ""
$OSThemePack146URL = ""
$OSThemePack147URL = ""
$OSThemePack148URL = ""
$OSThemePack149URL = ""
$OSThemePack150URL = ""
$OSThemePack151URL = ""
$OSThemePack152URL = ""
$OSThemePack153URL = ""
$OSThemePack154URL = ""
$OSThemePack155URL = ""
$OSThemePack156URL = ""
$OSThemePack157URL = ""
$OSThemePack158URL = ""
$OSThemePack159URL = ""
$OSThemePack160URL = ""
$OSThemePack161URL = ""
$OSThemePack162URL = ""
$OSThemePack163URL = ""
$OSThemePack164URL = ""
$OSThemePack165URL = ""
$OSThemePack166URL = ""
$OSThemePack167URL = ""
$OSThemePack168URL = ""
$OSThemePack169URL = ""
$OSThemePack170URL = ""
$OSThemePack171URL = ""
$OSThemePack172URL = ""
$OSThemePack173URL = ""
$OSThemePack174URL = ""
$OSThemePack175URL = ""
$OSThemePack176URL = ""
$OSThemePack177URL = ""
$OSThemePack178URL = ""
$OSThemePack179URL = ""
$OSThemePack180URL = ""
$OSThemePack181URL = ""
$OSThemePack182URL = ""
$OSThemePack183URL = ""
$OSThemePack184URL = ""
$OSThemePack185URL = ""
$OSThemePack186URL = ""
$OSThemePack187URL = ""
$OSThemePack188URL = ""
$OSThemePack189URL = ""
$OSThemePack190URL = ""
$OSThemePack191URL = ""
$OSThemePack192URL = ""
$OSThemePack193URL = ""
$OSThemePack194URL = ""
$OSThemePack195URL = ""
$OSThemePack196URL = ""
$OSThemePack197URL = ""
$OSThemePack198URL = ""
$OSThemePack199URL = ""
$OSThemePack200URL = ""
$OSThemePack201URL = ""
$OSThemePack202URL = ""
$OSThemePack203URL = ""
$OSThemePack204URL = ""
$OSThemePack205URL = ""
$OSThemePack206URL = ""
$OSThemePack207URL = ""
$OSThemePack208URL = ""
$OSThemePack209URL = ""
$OSThemePack210URL = ""
$OSThemePack211URL = ""
$OSThemePack212URL = ""
$OSThemePack213URL = ""
$OSThemePack214URL = ""
$OSThemePack215URL = ""
$OSThemePack216URL = ""
$OSThemePack217URL = ""
$OSThemePack218URL = ""
$OSThemePack219URL = ""
$OSThemePack220URL = ""
$OSThemePack221URL = ""
$OSThemePack222URL = ""
$OSThemePack223URL = ""
$OSThemePack224URL = ""
$OSThemePack225URL = ""
$OSThemePack226URL = ""
$OSThemePack227URL = ""
$OSThemePack228URL = ""
$OSThemePack229URL = ""
$OSThemePack230URL = ""
$OSThemePack231URL = ""
$OSThemePack232URL = ""
$OSThemePack233URL = ""
$OSThemePack234URL = ""
$OSThemePack235URL = ""
$OSThemePack236URL = ""
$OSThemePack237URL = ""
$OSThemePack238URL = ""
$OSThemePack239URL = ""
$OSThemePack240URL = ""
$OSThemePack241URL = ""
$OSThemePack242URL = ""
$OSThemePack243URL = ""
$OSThemePack244URL = ""
$OSThemePack245URL = ""
$OSThemePack246URL = ""
$OSThemePack247URL = ""
$OSThemePack248URL = ""
$OSThemePack249URL = ""
$OSThemePack250URL = ""
$OSThemePack251URL = ""
$OSThemePack252URL = ""
$OSThemePack253URL = ""
$OSThemePack254URL = ""
$OSThemePack255URL = ""
$OSThemePack256URL = ""
$OSThemePack257URL = ""
$OSThemePack258URL = ""
$OSThemePack259URL = ""
$OSThemePack260URL = ""
$OSThemePack261URL = ""
$OSThemePack262URL = ""
$OSThemePack263URL = ""
$OSThemePack264URL = ""
$OSThemePack265URL = ""
$OSThemePack266URL = ""
$OSThemePack267URL = ""
$OSThemePack268URL = ""
$OSThemePack269URL = ""
$OSThemePack270URL = ""
$OSThemePack271URL = ""
$OSThemePack272URL = ""
$OSThemePack273URL = ""
$OSThemePack274URL = ""
$OSThemePack275URL = ""
$OSThemePack276URL = ""
$OSThemePack277URL = ""
$OSThemePack278URL = ""
$OSThemePack279URL = ""
$OSThemePack280URL = ""
$OSThemePack281URL = ""
$OSThemePack282URL = ""
$OSThemePack283URL = ""
$OSThemePack284URL = ""
$OSThemePack285URL = ""
$OSThemePack286URL = ""
$OSThemePack287URL = ""
$OSThemePack288URL = ""
$OSThemePack289URL = ""
$OSThemePack290URL = ""
$OSThemePack291URL = ""
$OSThemePack292URL = ""
$OSThemePack293URL = ""
$OSThemePack294URL = ""
$OSThemePack295URL = ""
$OSThemePack296URL = ""
$OSThemePack297URL = ""
$OSThemePack298URL = ""
$OSThemePack299URL = ""
$OSThemePack300URL = ""
$OSThemePack301URL = ""
$OSThemePack302URL = ""
$OSThemePack303URL = ""
$OSThemePack304URL = ""
$OSThemePack305URL = ""
$OSThemePack306URL = ""
$OSThemePack307URL = ""
$OSThemePack308URL = ""
$OSThemePack309URL = ""
$OSThemePack310URL = ""
$OSThemePack311URL = ""
$OSThemePack312URL = ""
$OSThemePack313URL = ""
$OSThemePack314URL = ""
$OSThemePack315URL = ""
$OSThemePack316URL = ""
$OSThemePack317URL = ""
$OSThemePack318URL = ""
$OSThemePack319URL = ""
$OSThemePack320URL = ""
$OSThemePack321URL = ""
$OSThemePack322URL = ""
$OSThemePack323URL = ""
$OSThemePack324URL = ""
$OSThemePack325URL = ""
$OSThemePack326URL = ""
$OSThemePack327URL = ""
$OSThemePack328URL = ""
$OSThemePack329URL = ""
$OSThemePack330URL = ""
$OSThemePack331URL = ""
$OSThemePack332URL = ""
$OSThemePack333URL = ""


######################################
# Windows OS Theme Download Location
#######################################

$OSThemePackDownloadDirectory = "C:\downloads\OS\Themes"
$ExtractDir = "C:\downloads\OS\Themes\Extract"

Write-Verbose "Processing: Acquiring Retired downloadable Windows OS Themes" -Verbose
Write-Host

Save-WebFile -SourceUrl $OSThemePack1URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack2URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack3URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack4URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack5URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack6URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack7URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack8URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack9URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack10URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack11URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack12URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack13URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack14URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack15URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack16URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack17URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack18URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack19URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack20URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack21URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack22URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack23URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack24URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack25URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack26URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack27URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack28URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack29URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack30URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack31URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack32URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack33URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack34URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack35URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack36URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack37URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack38URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack39URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack40URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack41URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack42URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack43URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack44URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack45URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack46URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack47URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack48URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack49URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack50URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack51URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack52URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack53URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack54URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack55URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack56URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack57URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack58URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack59URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack60URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack61URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack62URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack63URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack64URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack65URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack66URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack67URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack68URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack69URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack70URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack71URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack72URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack73URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack74URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack75URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack76URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack77URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack78URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack79URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack80URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack81URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack82URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack83URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack84URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack85URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack86URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack87URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack88URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack89URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack90URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack91URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack92URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack93URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack94URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack95URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack96URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack97URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack98URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack99URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack100URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack101URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack102URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack103URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack104URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack105URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack106URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack107URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack108URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack109URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack110URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack111URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack112URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack113URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack114URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack115URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack116URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack117URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack118URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack119URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack120URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack121URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack122URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack123URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack124URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack125URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack126URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack127URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack128URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack129URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack130URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack131URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack132URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack133URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack134URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack135URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack136URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack137URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack138URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack139URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack140URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack141URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack142URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack143URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack144URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack145URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack146URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack147URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack148URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack149URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack150URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack151URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack152URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack153URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack154URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack155URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack156URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack157URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack158URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack159URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack160URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack161URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack162URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack163URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack164URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack165URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack166URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack167URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack168URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack169URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack170URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack171URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack172URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack173URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack174URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack175URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack176URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack177URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack178URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack179URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack180URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack181URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack182URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack183URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack184URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack185URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack186URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack187URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack188URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack189URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack190URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack191URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack192URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack193URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack194URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack195URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack196URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack197URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack198URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack199URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack200URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack201URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack202URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack203URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack204URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack205URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack206URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack207URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack208URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack209URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack210URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack211URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack222URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack223URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack224URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack225URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack226URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack227URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack228URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack229URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack230URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack221URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack222URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack223URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack224URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack225URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack226URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack227URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack228URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack229URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack230URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack231URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack232URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack233URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack234URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack235URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack236URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack237URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack238URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack239URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack240URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack241URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack242URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack243URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack244URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack245URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack246URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack247URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack248URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack249URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack250URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack251URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack252URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack253URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack254URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack255URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack256URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack257URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack258URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack259URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack260URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack261URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack262URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack263URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack264URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack265URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack266URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack267URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack268URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack269URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack270URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack271URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack272URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack273URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack274URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack275URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack276URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack277URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack278URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack279URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack280URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack281URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack282URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack283URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack284URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack285URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack286URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack287URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack288URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack289URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack290URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack291URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack292URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack293URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack294URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack295URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack296URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack297URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack298URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack299URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack300URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack301URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack302URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack303URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack304URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack305URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack306URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack307URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack308URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack309URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack310URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack311URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack312URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack313URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack314URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack315URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack316URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack317URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack318URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack319URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack320URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack321URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack322URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack323URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack324URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack325URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack326URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack327URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack328URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack329URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack330URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack331URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack332URL -DestinationDirectory $OSThemePackDownloadDirectory
Save-WebFile -SourceUrl $OSThemePack333URL -DestinationDirectory $OSThemePackDownloadDirectory

Write-Verbose "Completed: Download of Retired Windows OS Themes" -Verbose
Write-Host

Write-Verbose "Processing: Extracting ZIP Files" -Verbose
Write-Host

Expand-7Zip -ArchiveFileName "$OSThemePackDownloadDirectory\BingMapsEurope.zip.001" -TargetPath $ExtractDir -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OSThemePackDownloadDirectory\BingMapsEurope.zip.002" -TargetPath $ExtractDir -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OSThemePackDownloadDirectory\BingMapsUnitedStates.zip.001" -TargetPath $ExtractDir -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OSThemePackDownloadDirectory\BingMapsUnitedStates.zip.002" -TargetPath $ExtractDir -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OSThemePackDownloadDirectory\BingMapsUnitedStates.zip.003" -TargetPath $ExtractDir -ErrorAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$OSThemePackDownloadDirectory\CommunityShowcaseAqua3.zip.001" -TargetPath $ExtractDir -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OSThemePackDownloadDirectory\CommunityShowcaseAqua3.zip.002" -TargetPath $ExtractDir -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OSThemePackDownloadDirectory\CommunityShowcaseAqua3.zip.003" -TargetPath $ExtractDir -ErrorAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$OSThemePackDownloadDirectory\CommunityShowcaseAqua4.zip.001" -TargetPath $ExtractDir -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OSThemePackDownloadDirectory\CommunityShowcaseAqua4.zip.002" -TargetPath $ExtractDir -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OSThemePackDownloadDirectory\CommunityShowcaseAqua4.zip.003" -TargetPath $ExtractDir -ErrorAction SilentlyContinue
Expand-7Zip -ArchiveFileName "$OSThemePackDownloadDirectory\PanoramasEurope.zip.001" -TargetPath $ExtractDir -ErrorAction SilentlyContinue 
Expand-7Zip -ArchiveFileName "$OSThemePackDownloadDirectory\PanoramasEurope.zip.002" -TargetPath $ExtractDir -ErrorAction SilentlyContinue 

Write-Verbose "Completed: Extracting ZIP Files" -Verbose
Write-Host

Write-Verbose "Processing: Copying Extracted OS Theme Files" -Verbose
Write-Host

Copy-Item -Path "$OSThemePackDownloadDirectory\BingMapsEurope.themepack" -Destination $OSThemePackDownloadDirectory -Force
Copy-Item -Path "$OSThemePackDownloadDirectory\BingMapsUnitedStates.themepack" -Destination $OSThemePackDownloadDirectory -Force
Copy-Item -Path "$OSThemePackDownloadDirectory\CommunityShowcaseAqua3.themepack" -Destination $OSThemePackDownloadDirectory -Force
Copy-Item -Path "$OSThemePackDownloadDirectory\CommunityShowcaseAqua4.themepack" -Destination $OSThemePackDownloadDirectory -Force
Copy-Item -Path "$OSThemePackDownloadDirectory\PanoramasEurope.deskthemepack" -Destination $OSThemePackDownloadDirectory -Force

Write-Verbose "Completed: Copying Extracted OS Theme Files" -Verbose
Write-Host

Write-Verbose "Processing: Copying OS Theme Files to C:\Windows\Resources\Themes" -Verbose
Write-Host

Copy-Item -Path "$OSThemePackDownloadDirectory\*.themepack" -Destination "C:\Windows\Resources\Themes" -Recurse -Force
Copy-Item -Path "$OSThemePackDownloadDirectory\*.deskthemepack" -Destination "C:\Windows\Resources\Themes" -Recurse -Force

Write-Verbose "Completed: Copying OS Theme Files to C:\Windows\Resources\Themes" -Verbose
Write-Host

stop-Transcript
