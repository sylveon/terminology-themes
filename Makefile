BASE=assets/base.edc

OUT_DIR=out
ASSETS_DIR=assets

THEMES_BIN=$(shell find themes -type f -name "*.edc" | sed "s/\(.edc\)\$$/.edj/g" | sed "s/^\(themes\/\)/$(OUT_DIR)\//g")

EDJE_CC=edje_cc
EDJE_CC_IMG_FLAGS=-id $(ASSETS_DIR)
EDJE_CC_SND_FLAGS=-sd $(ASSETS_DIR)
EDJE_CC_FLAGS=$(EDJE_CC_IMG_FLAGS) $(EDJE_CC_SND_FLAGS)

all: $(THEMES_BIN)

$(THEMES_BIN): $(BASE) $(OUT_DIR)
	$(EDJE_CC) $(EDJE_CC_FLAGS) $(subst out,themes,$(@:%.edj=%.edc)) $@

$(OUT_DIR):
	mkdir $@

clean:
	rm themes/*.edj

install: $(THEMES_BIN)
	mkdir -p "$(DESTDIR)/usr/share/terminology/themes"
	install -Dm644 $^ "$(DESTDIR)/usr/share/terminology/themes"
