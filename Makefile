BASE=base.edc
DIMMED_MONOKAI=themes/dimmed-monokai

THEMES_SRC=$(DIMMED_MONOKAI).edc
THEMES_BIN=$(DIMMED_MONOKAI).edj

ASSETS_DIR=assets

EDJE_CC=edje_cc
EDJE_CC_IMG_FLAGS=-id $(ASSETS_DIR)
EDJE_CC_SND_FLAGS=-sd $(ASSETS_DIR)
EDJE_CC_FLAGS=$(EDJE_CC_IMG_FLAGS) $(EDJE_CC_SND_FLAGS)

all: $(THEMES_BIN)

$(THEMES_BIN): $(THEMES_SRC) $(BASE)
	$(EDJE_CC) $(EDJE_CC_FLAGS) $< $@

clean:
	rm themes/*.edj

install: $(THEMES_BIN)
	mkdir -p "$(PREFIX)/usr/share/terminology/themes"
	install -Dm644 $^ "$(PREFIX)/usr/share/terminology/themes"
