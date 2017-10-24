ASSETS_DIR=assets
SOURCE_DIR=themes

BASE=$(ASSETS_DIR)/base.edc

OBJS=$(patsubst %.edc, %.edj, $(wildcard $(SOURCE_DIR)/*.edc))

EDJE_CC=edje_cc
EDJE_CC_IMG_FLAGS=-id $(ASSETS_DIR)
EDJE_CC_SND_FLAGS=-sd $(ASSETS_DIR)
EDJE_CC_FLAGS=$(EDJE_CC_IMG_FLAGS) $(EDJE_CC_SND_FLAGS)

.PHONY: all clean install

all: $(OBJS)

%.edj: %.edc $(BASE)
	$(EDJE_CC) $(EDJE_CC_FLAGS) $< $@

clean:
	rm $(SOURCE_DIR)/*.edj

install: $(OBJS)
	mkdir -p "$(DESTDIR)/usr/share/terminology/themes"
	install -Dm644 $^ "$(DESTDIR)/usr/share/terminology/themes"
