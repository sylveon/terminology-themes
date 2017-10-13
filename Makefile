BASE=base.edc

THEMES_BIN=themes/3024Day.edj themes/3024Night.edj themes/AdventureTime.edj themes/Afterglow.edj themes/AlienBlood.edj themes/Argonaut.edj themes/Arthur.edj themes/AtelierSulphurpool.edj themes/Atom.edj themes/AtomOneLight.edj themes/ayu.edj themes/ayu_light.edj themes/Batman.edj themes/BelafonteDay.edj themes/BelafonteNight.edj themes/BirdsOfParadise.edj themes/Blazer.edj themes/BlulocoDark.edj themes/BlulocoLight.edj themes/Borland.edj themes/BrightLights.edj themes/Broadcast.edj themes/Brogrammer.edj themes/C64.edj themes/Chalkboard.edj themes/Chalk.edj themes/Ciapre.edj themes/CLRS.edj themes/Cobalt2.edj themes/CobaltNeon.edj themes/CrayonPonyFish.edj themes/DarkPastel.edj themes/Darkside.edj themes/deep.edj themes/Desert.edj themes/DimmedMonokai.edj themes/DotGov.edj themes/Dracula.edj themes/DuotoneDark.edj themes/Earthsong.edj themes/Elemental.edj themes/Elementary.edj themes/ENCOM.edj themes/Espresso.edj themes/EspressoLibre.edj themes/Fideloper.edj themes/FirefoxDev.edj themes/Firewatch.edj themes/FishTank.edj themes/Flat.edj themes/Flatland.edj themes/Floraverse.edj themes/ForestBlue.edj themes/FrontEndDelight.edj themes/FunForrest.edj themes/Galaxy.edj themes/Github.edj themes/Glacier.edj themes/Grape.edj themes/Grass.edj themes/GruvboxDark.edj themes/Hacktober.edj themes/Hardcore.edj themes/Harper.edj themes/Highway.edj themes/HipsterGreen.edj themes/Homebrew.edj themes/Hurtado.edj themes/Hybrid.edj themes/IC_Green_PPL.edj themes/IC_Orange_PPL.edj themes/idleToes.edj themes/IR_Black.edj themes/JackieBrown.edj themes/Japanesque.edj themes/Jellybeans.edj themes/JetBrainsDarcula.edj themes/Kibble.edj themes/LaterThisEvening.edj themes/Lavandula.edj themes/LiquidCarbon.edj themes/LiquidCarbonTransparent.edj themes/LiquidCarbonTransparentInverse.edj themes/ManPage.edj themes/MaterialDark.edj themes/Material.edj themes/Mathias.edj themes/Medallion.edj themes/Misterioso.edj themes/Molokai.edj themes/MonaLisa.edj themes/MonokaiSoda.edj themes/MonokaiVivid.edj themes/N0tch2k.edj themes/Neopolitan.edj themes/Neutron.edj themes/NightLionv1.edj themes/NightLionv2.edj themes/Novel.edj themes/Obsidian.edj themes/Ocean.edj themes/OceanicMaterial.edj themes/Ollie.edj themes/OneHalfDark.edj themes/OneHalfLight.edj themes/Pandora.edj themes/ParaisoDark.edj themes/ParasioDark.edj themes/PaulMillr.edj themes/PencilDark.edj themes/PencilLight.edj themes/PiattoLight.edj themes/Pnevma.edj themes/Pro.edj themes/ProLight.edj themes/RedAlert.edj themes/RedPlanet.edj themes/RedSands.edj themes/Rippedcasts.edj themes/Royal.edj themes/Ryuuko.edj themes/SeafoamPastel.edj themes/SeaShells.edj themes/Seti.edj themes/Shaman.edj themes/Slate.edj themes/Smyck.edj themes/Snazzy.edj themes/SoftServer.edj themes/SolarizedDarcula.edj themes/SolarizedDark.edj themes/SolarizedDarkHigherContrast.edj themes/SolarizedDark-Patched.edj themes/SolarizedLight.edj themes/Spacedust.edj themes/SpaceGray.edj themes/SpaceGrayEightiesDull.edj themes/SpaceGrayEighties.edj themes/Spiderman.edj themes/Spring.edj themes/Square.edj themes/Sundried.edj themes/Symfonic.edj themes/synthwave.edj themes/TangoAdapted.edj themes/TangoHalfAdapted.edj themes/Teerb.edj themes/TerminalBasic.edj themes/ThayerBright.edj themes/TheHulk.edj themes/Tomorrow.edj themes/TomorrowNightBlue.edj themes/TomorrowNightBright.edj themes/TomorrowNight.edj themes/TomorrowNightEighties.edj themes/ToyChest.edj themes/Treehouse.edj themes/Twilight.edj themes/Ubuntu.edj themes/UnderTheSea.edj themes/Urple.edj themes/Vaughn.edj themes/VibrantInk.edj themes/VioletDark.edj themes/VioletLight.edj themes/WarmNeon.edj themes/Wez.edj themes/WildCherry.edj themes/Wombat.edj themes/Wryan.edj themes/Zenburn.edj

ASSETS_DIR=assets

EDJE_CC=edje_cc
EDJE_CC_IMG_FLAGS=-id $(ASSETS_DIR)
EDJE_CC_SND_FLAGS=-sd $(ASSETS_DIR)
EDJE_CC_FLAGS=$(EDJE_CC_ADDITIONAL_FLAGS) $(EDJE_CC_IMG_FLAGS) $(EDJE_CC_SND_FLAGS)

all: $(THEMES_BIN)

$(THEMES_BIN): $(BASE)
	$(EDJE_CC) $(EDJE_CC_FLAGS) themes/`basename $@ .edj`.edc "$@"

clean:
	rm themes/*.edj

install: $(THEMES_BIN)
	mkdir -p "$(PREFIX)/usr/share/terminology/themes"
	install -Dm644 $^ "$(PREFIX)/usr/share/terminology/themes"
