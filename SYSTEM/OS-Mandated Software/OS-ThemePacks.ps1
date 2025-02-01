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
$OSThemePack176URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/IceCastles.themepack"
$OSThemePack177URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Imagination.themepack"
$OSThemePack178URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/IndianGardenAkshayPatil.themepack"
$OSThemePack179URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/IndianWildlifeMayurKotlikar.themepack"
$OSThemePack180URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/IsleofManMarkWallace.themepack"
$OSThemePack181URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/JackReacher.themepack"
$OSThemePack182URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Jellyfish.themepack"
$OSThemePack183URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/JoshSommersBeaches.themepack"
$OSThemePack184URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/JoshSommersIllusions.themepack"
$OSThemePack185URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/KimHana.themepack"
$OSThemePack186URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/KinectDisneylandAdventures.themepack"
$OSThemePack187URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/KinectRush.themepack"
$OSThemePack188URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/KungFuPanda2.themepack"
$OSThemePack189URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/LOTSBEARS.themepack"
$OSThemePack190URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/LacyHearts.themepack"
$OSThemePack191URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/LakeJiaming.themepack"
$OSThemePack192URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/LakeOhridSunsetsSlavcoStojanoski.themepack"
$OSThemePack193URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/LargeBirdsJessiBryan.themepack"
$OSThemePack194URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/LargeSmallOndrejVlcek.themepack"
$OSThemePack195URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/LatvianLandscapes.themepack"
$OSThemePack196URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/LatvianNature.themepack"
$OSThemePack197URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/LifeInLavender.themepack"
$OSThemePack198URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/LightDark2NickBoyer.themepack"
$OSThemePack199URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/LightDarkNickBoyer.themepack"
$OSThemePack200URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/LightPaintingLayonerBeast.themepack"
$OSThemePack201URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Lightning.themepack"
$OSThemePack202URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/LiquidJewels2ShilpaSRao.themepack"
$OSThemePack203URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/LiquidJewelsShilpaSRao.themepack"
$OSThemePack204URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/LondonArchitectureImranMirza.themepack"
$OSThemePack205URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Lovebirds.themepack"
$OSThemePack206URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/LovelyTulipsBaghyaKannan.themepack"
$OSThemePack207URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/MEGAMIND.themepack"
$OSThemePack208URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/MIGP_tg-lc.themepack"
$OSThemePack209URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/MSFlight_HI.themepack"
$OSThemePack210URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/MSH_LEAS.themepack"
$OSThemePack211URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Mabinogi.themepack"
$OSThemePack212URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/MacroRocksDavidSommers.themepack"
$OSThemePack213URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/MaddalenaSisto.themepack"
$OSThemePack214URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/MagicLandscapes2MichaelBreitung.themepack"
$OSThemePack215URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/MagicLandscapesMichaelBreitung.themepack"
$OSThemePack216URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/MangaStyle.themepack"
$OSThemePack217URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/MomentsCaptured_RishAgarwal.themepack"
$OSThemePack218URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/MonochromaticItalyClaudioMarinangeli.themepack"
$OSThemePack219URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/MonochromaticMoodsMarkNelson.themepack"
$OSThemePack220URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/MonochromaticMoodsMarkNelson2.themepack"
$OSThemePack221URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/MorningPopkovAlexandr.themepack"
$OSThemePack222URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/MountRainierChristopherDElliott.themepack"
$OSThemePack223URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/MuscleCars.themepack"
$OSThemePack224URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/MushroomsEdianAnnink.themepack"
$OSThemePack225URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/MustangLifeGenePraag.themepack"
$OSThemePack226URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/NASAHiddenUniverse.themepack"
$OSThemePack227URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/NASASpacescapes.themepack"
$OSThemePack228URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/NYCityscapesJohnnyWLam.themepack"
$OSThemePack229URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/NarutoShippuden5.themepack"
$OSThemePack230URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/NaturalGraceBrianLai.themepack"
$OSThemePack231URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/NatureMikeSwanson.themepack"
$OSThemePack232URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/NengGaoMountain.themepack"
$OSThemePack233URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/NicoleDoll.themepack"
$OSThemePack234URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/NorthIslandNZBrianLai.themepack"
$OSThemePack235URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/PNWBirdsChristopherDElliott.themepack"
$OSThemePack236URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/PNWWildlifeChristopherDElliott.themepack"
$OSThemePack237URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/PaintedSkiesBrookBurling.themepack"
$OSThemePack238URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/PanoramasEurope.zip.001"
$OSThemePack239URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/PanoramasEurope.zip.002"
$OSThemePack240URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/PanoramasNYC1ChadWeisser.deskthemepack"
$OSThemePack241URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/PanoramasNYC2ChadWeisser.deskthemepack"
$OSThemePack242URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/PanoramasNZJoshRobinson.deskthemepack"
$OSThemePack243URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/PanoramicAnimals.deskthemepack"
$OSThemePack244URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/PanoramicBeaches.deskthemepack"
$OSThemePack245URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/PanoramicDeserts.deskthemepack"
$OSThemePack246URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/PanoramicGlaciers.deskthemepack"
$OSThemePack247URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/PanoramicMountains.deskthemepack"
$OSThemePack248URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/PanoramicRockFormations.deskthemepack"
$OSThemePack249URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/PanoramicSnow.deskthemepack"
$OSThemePack250URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/PartyIce.themepack"
$OSThemePack251URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/PerspectivesJapan1KazuoNakadai.themepack"
$OSThemePack252URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/PerspectivesJapan2KazuoNakadai.themepack"
$OSThemePack253URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Peru.themepack"
$OSThemePack254URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/PlantsVsZombiesGardenWarfare.themepack"
$OSThemePack255URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/PlayfulPuppies.themepack"
$OSThemePack256URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/PredatoryBirdsAidanFinn.themepack"
$OSThemePack257URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/PussInBootsMovie.themepack"
$OSThemePack258URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/QueenstownNZIanRushton.themepack"
$OSThemePack259URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/RYSE.themepack"
$OSThemePack260URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/RainbowOfBirdsTracieLouise.themepack"
$OSThemePack261URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/RaindropsDewStojanoskiSlavco.themepack"
$OSThemePack262URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/RaindropsRanganDas.themepack"
$OSThemePack263URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Rango.themepack"
$OSThemePack264URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/RavensAndCrows.themepack"
$OSThemePack265URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/RecursionsRickyKendall.themepack"
$OSThemePack266URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Reflections.themepack"
$OSThemePack267URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/RelicsOfTheSea.themepack"
$OSThemePack268URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/RelicsOfTheSea2.themepack"
$OSThemePack269URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Roses.themepack"
$OSThemePack270URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/SWSandstone_DLawler.themepack"
$OSThemePack271URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/SaltLakesDeadSea.themepack"
$OSThemePack272URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/SardinianShoresGiovanniCultrera.themepack"
$OSThemePack273URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/ScenesYosemiteIngoScholtes.themepack"
$OSThemePack274URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/ScenicEurope1IngoScholtes.themepack"
$OSThemePack275URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/ScenicEurope2IngoScholtes.themepack"
$OSThemePack276URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/SchleswigHolsteinMathiasKentrup.themepack"
$OSThemePack277URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/SeasonsArnoulddePotestadeTornaco.themepack"
$OSThemePack278URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Serbia_nat.themepack"
$OSThemePack279URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Shadowboxes2ChrisMaynard.themepack"
$OSThemePack280URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/ShadowboxesChrisMaynard.themepack"
$OSThemePack281URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Shamrocks.themepack"
$OSThemePack282URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/ShrekForeverAfter.themepack"
$OSThemePack283URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/SierraSunsetsTomMansfield.themepack"
$OSThemePack284URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/SightsOfMontereySumanDas.themepack"
$OSThemePack285URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/SleepyKittens.themepack"
$OSThemePack286URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/SmallBirdsJessiBryan.themepack"
$OSThemePack287URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/SmallWorld.themepack"
$OSThemePack288URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Snakes.themepack"
$OSThemePack289URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Snowmen.themepack"
$OSThemePack290URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/SnowyNight.themepack"
$OSThemePack291URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/SnowyOwlsChristopherDElliott.themepack"
$OSThemePack292URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/SouthIndianBeachesShilpaSRao.themepack"
$OSThemePack293URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/SpectacularSkiesMarcoMuller.themepack"
$OSThemePack294URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/SpiekeroogMarkusJanse.themepack"
$OSThemePack295URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/SpringBlooms2RebeccaHeigel.themepack"
$OSThemePack296URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/SpringBloomsRebeccaHeigel.themepack"
$OSThemePack297URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/SriLankaSurangaWeeratunga.themepack"
$OSThemePack298URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/SubtleDetailsClaudioMarinangeli.themepack"
$OSThemePack299URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/SugarAndSpice.themepack"
$OSThemePack300URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/SummerBloomsRebeccaHeigel.themepack"
$OSThemePack301URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/SunnyShores.themepack"
$OSThemePack302URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/SurrealTerritory.themepack"
$OSThemePack303URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Thailand.themepack"
$OSThemePack304URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/TheForestFloorBojanSeguljev.themepack"
$OSThemePack305URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/TheGreatHappification.themepack"
$OSThemePack306URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/TheGunstringer.themepack"
$OSThemePack307URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/TheMilkyWay.themepack"
$OSThemePack308URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/TicketToFear.themepack"
$OSThemePack309URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Tigers.themepack"
$OSThemePack310URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Transformers3.themepack"
$OSThemePack311URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/TulipFestivalThiyagarajanSwaminathan.themepack"
$OSThemePack312URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/TwinkleWish.themepack"
$OSThemePack313URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/UbisoftChildOfLight.themepack"
$OSThemePack314URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/V8SupercarsXboxOneRacing.themepack"
$OSThemePack315URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Watch_Dogs.themepack"
$OSThemePack316URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/WaterdropsByJPP.themepack"
$OSThemePack317URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/WaterscapesMarkNelson.themepack"
$OSThemePack318URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/WebsWaterdrops.themepack"
$OSThemePack319URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/WestCoastNZIanRushton.themepack"
$OSThemePack320URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/WildBeautyCharlesBergman.themepack"
$OSThemePack321URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/WinterGardenHayleyElizabeth.themepack"
$OSThemePack322URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/WintryWebs.themepack"
$OSThemePack323URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/Wolves.themepack"
$OSThemePack324URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/YearOfTheDragon.themepack"
$OSThemePack325URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/YearOfTheRabbit_en.themepack"
$OSThemePack326URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/ZagrebNightsTiborRogulja.themepack"
$OSThemePack327URL = "https://github.com/osdcloudcline/OS-Items-/raw/refs/heads/main/OS%20Theme%20Files/Retired%20By%20Microsoft/maplestory.themepack"


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

pause

Write-Verbose "Processing: Copying OS Theme Files to C:\Windows\Resources\Themes" -Verbose
Write-Host

Copy-Item -Path "$OSThemePackDownloadDirectory\*.themepack" -Destination "C:\Windows\Resources\Themes" -Recurse -Force
Copy-Item -Path "$OSThemePackDownloadDirectory\*.deskthemepack" -Destination "C:\Windows\Resources\Themes" -Recurse -Force

Write-Verbose "Completed: Copying OS Theme Files to C:\Windows\Resources\Themes" -Verbose
Write-Host

stop-Transcript
