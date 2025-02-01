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
$OSThemePack21URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/BeautifulBlossomsElenaYansupova.themepack"
$OSThemePack22URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/BeautifulQueenslandTracieLouise.themepack"
$OSThemePack23URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/BeautyBritain2SeanByrne.themepack"
$OSThemePack24URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/BeautyBritainSeanByrne.themepack"
$OSThemePack25URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/BeautyHongKongWilsonAu.themepack"
$OSThemePack26URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/BeautyHonshuWilsonAu.themepack"
$OSThemePack27URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/BeesMayurKotlikar.themepack"
$OSThemePack28URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/BingMapsEurope.zip.001"
$OSThemePack29URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/BingMapsEurope.zip.002"
$OSThemePack30URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/BingMapsUnitedStates.zip.001"
$OSThemePack31URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/BingMapsUnitedStates.zip.002"
$OSThemePack32URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/BingMapsUnitedStates.zip.003"
$OSThemePack33URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/BlueWater.themepack"
$OSThemePack34URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/BookSleepIlSungNa.themepack"
$OSThemePack35URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/BotanicalGardenChrisChung.themepack"
$OSThemePack36URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/BulletAsylum.themepack"
$OSThemePack37URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/BunniesDucklings.themepack"
$OSThemePack38URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Butterflies.themepack"
$OSThemePack39URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/ButterfliesMayurKotlikar.themepack"
$OSThemePack40URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/ButterfliesThomasFreiberg.themepack"
$OSThemePack41URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Calligraphy.themepack"
$OSThemePack42URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CaptainAmerica.themepack"
$OSThemePack43URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CaribbeanShores.themepack"
$OSThemePack44URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CatsAnytime.themepack"
$OSThemePack45URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CatsEverywhere.themepack"
$OSThemePack46URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CeskaZima.themepack"
$OSThemePack47URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CeskeJaro.themepack"
$OSThemePack48URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/ChengLingMasks.themepack"
$OSThemePack49URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/ChengLingSketches.themepack"
$OSThemePack50URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/ChickensCantFly_lc.themepack"
$OSThemePack51URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Chocolate.themepack"
$OSThemePack52URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Choobies.themepack"
$OSThemePack53URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CityLightsByTalhaTariq.themepack"
$OSThemePack54URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/ClassicSportsCars.themepack"
$OSThemePack55URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Clouds.themepack"
$OSThemePack56URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CoastalGermanyFrankHojenski.themepack"
$OSThemePack57URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CoastalPortugalPauloPPereira.themepack"
$OSThemePack58URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/ColorSplash.themepack"
$OSThemePack59URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/ColorsOfIndia.themepack"
$OSThemePack60URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/ColorsOfNaturePopkovAlexandr.themepack"
$OSThemePack61URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseAqua.themepack"
$OSThemePack62URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseAqua2.themepack"
$OSThemePack63URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseAqua3.zip.001"
$OSThemePack64URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseAqua3.zip.002"
$OSThemePack65URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseAqua3.zip.003"
$OSThemePack66URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseAqua4.zip.001"
$OSThemePack67URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseAqua4.zip.002"
$OSThemePack68URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseAqua4.zip.003"
$OSThemePack69URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseCityscapes.themepack"
$OSThemePack70URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseCityscapes2.themepack"
$OSThemePack71URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseDramaticSkies.themepack"
$OSThemePack72URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseDramaticSkies2.themepack"
$OSThemePack73URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseDramaticSkies3.themepack"
$OSThemePack74URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseEverydayArt.themepack"
$OSThemePack75URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseEverydayArt2.themepack"
$OSThemePack76URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseEverydayArt3.themepack"
$OSThemePack77URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseEverydayArt4.themepack"
$OSThemePack78URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseFauna.themepack"
$OSThemePack79URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseFauna2.themepack"
$OSThemePack80URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseFauna3.themepack"
$OSThemePack81URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseFlora.themepack"
$OSThemePack82URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseFlora2.themepack"
$OSThemePack83URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseFlora3.themepack"
$OSThemePack84URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseFlora4.themepack"
$OSThemePack85URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseInsects.themepack"
$OSThemePack86URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseInsects2.themepack"
$OSThemePack87URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseInsects3.themepack"
$OSThemePack88URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseNaturalLandscapes.themepack"
$OSThemePack89URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseNaturalLandscapes2.themepack"
$OSThemePack90URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseNaturalLandscapes3.themepack"
$OSThemePack91URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseRuralLandscapes.themepack"
$OSThemePack92URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseRuralLandscapes2.themepack"
$OSThemePack93URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CommunityShowcaseRuralLandscapes3.themepack"
$OSThemePack94URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CougarMtZoo.themepack"
$OSThemePack95URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CreaturesUpCloseGraceEggleston.themepack"
$OSThemePack96URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/CreepyCobwebs.themepack"
$OSThemePack97URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/DanubeSunsetsAlinaSerban.themepack"
$OSThemePack98URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/DarkSkiesTracyHymas.themepack"
$OSThemePack99URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Daydream.themepack"
$OSThemePack100URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/DefaultPack.EXE"
$OSThemePack101URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/DelectableDesignsKarynServin.themepack"
$OSThemePack102URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Diffusion.themepack"
$OSThemePack103URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/DisneyInfinity.themepack"
$OSThemePack104URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/DogsInSummer.themepack"
$OSThemePack105URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/DogsInWinter.themepack"
$OSThemePack106URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Dolphins.themepack"
$OSThemePack107URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/DragonfliesThomasFreiberg.themepack"
$OSThemePack108URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/DreamgardenChristinaManchenko.themepack"
$OSThemePack109URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Ducati2.themepack"
$OSThemePack110URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Ducati_Windows7.themepack"
$OSThemePack111URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/DuskDawn.themepack"
$OSThemePack112URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/EASPORTS_WorldCup.themepack"
$OSThemePack113URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/EchoesOfThePast.themepack"
$OSThemePack114URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/EerieAutumn.themepack"
$OSThemePack115URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/EscapeHuynhNhuNguyenMinhTruc.themepack"
$OSThemePack116URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/ExploringManitobaHayleyElizabeth.themepack"
$OSThemePack117URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/FantasticFlowersChrisChung.themepack"
$OSThemePack118URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/FeatherPhotosChrisMaynard.themepack"
$OSThemePack119URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/FireMarcSchroeder.themepack"
$OSThemePack120URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Fireworks.themepack"
$OSThemePack121URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/FischlandDZMarkusJanse.themepack"
$OSThemePack122URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/FloralGeometry2RanganDas.themepack"
$OSThemePack123URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/FloralGeometryRanganDas.themepack"
$OSThemePack124URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/FlowersFoliage.themepack"
$OSThemePack125URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Footpaths.themepack"
$OSThemePack126URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/ForzaMotorsport4.themepack"
$OSThemePack127URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Foxes.themepack"
$OSThemePack128URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/FractalArtCameronBashaw.themepack"
$OSThemePack129URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/FrenchRivieraJamesPoulsom.themepack"
$OSThemePack130URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/FreshFruit.themepack"
$OSThemePack131URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/FrostMacros_DLawler.themepack"
$OSThemePack132URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/FrozenFormations.themepack"
$OSThemePack133URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/FruitNinja.themepack"
$OSThemePack134URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/FunFruitGuoBo.themepack"
$OSThemePack135URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/FuturisticFractals_DLawler.themepack"
$OSThemePack136URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/GOW3DeviantArt.themepack"
$OSThemePack137URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/GTGraphics.themepack"
$OSThemePack138URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/GTGraphics2.themepack"
$OSThemePack139URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/GTGraphics3.themepack"
$OSThemePack140URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/GalapagosByRG.themepack"
$OSThemePack141URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/GardenGlimpses2RanganDas.themepack"
$OSThemePack142URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/GardenGlimpses3RanganDas.themepack"
$OSThemePack143URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/GardenGlimpses4RanganDas.themepack"
$OSThemePack144URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/GardenGlimpsesRanganDas.themepack"
$OSThemePack145URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/GardenLife2HayleyElizabeth.themepack"
$OSThemePack146URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/GardenLife3HayleyElizabeth.themepack"
$OSThemePack147URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/GardenLifeHayleyElizabeth.themepack"
$OSThemePack148URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/GardenMacros_DLawler.themepack"
$OSThemePack149URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/GardenSeasonsNickBoyer.themepack"
$OSThemePack150URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Gears%202.themepack"
$OSThemePack151URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Gears3.themepack"
$OSThemePack152URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Gears3Delta.themepack"
$OSThemePack153URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Gears3Launch.themepack"
$OSThemePack154URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/GearsofWar.themepack"
$OSThemePack155URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/GermanLandscapesFotocommunity.themepack"
$OSThemePack156URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/GermanLandscapesMathiasRehberg.themepack"
$OSThemePack157URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/GermanSummerThomasFreiberg.themepack"
$OSThemePack158URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/GhostTownTracyHymas.themepack"
$OSThemePack159URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/GivingHeroes.themepack"
$OSThemePack160URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/GlowingBeaches.themepack"
$OSThemePack161URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/GreenWorldPiotrFurman.themepack"
$OSThemePack162URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/GrowArashAsghari.themepack"
$OSThemePack163URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Halo4Heroes.themepack"
$OSThemePack164URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/HaloReach1.themepack"
$OSThemePack165URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/HaloReachArt.themepack"
$OSThemePack166URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Happiness%20Factory_Windows7.themepack"
$OSThemePack167URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/HarryPotter.themepack"
$OSThemePack168URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/HarvestTime.themepack"
$OSThemePack169URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Hawaii.themepack"
$OSThemePack170URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/HolidayLights.themepack"
$OSThemePack171URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/HongKongParkChrisChung.themepack"
$OSThemePack172URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/HopesDreamsGeorgianaChitac.themepack"
$OSThemePack173URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Horses.themepack"
$OSThemePack174URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/HotAirBalloons.themepack"
$OSThemePack175URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/HummingbirdsDesireeSkatvold.themepack"
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
