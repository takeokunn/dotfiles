ALACRITTY_DIR = ~/.config/alacritty
SELF_ALACRITTY_DIR = $(MODULE_DIR)/alacritty

ALACRITTY_THEME_GITHUB = https://github.com/eendroroy/alacritty-theme.git

ALACRITTY_CLEAN_TARGETS += alacritty-clean
ALACRITTY_TARGETS += alacritty-install

.PHONY: alacritty-clean
alacritty-clean:
	rm -fr $(ALACRITTY_DIR)

.PHONY: alacritty-install
alacritty-install: $(ALACRITTY_DIR)
	git clone --depth=1 $(ALACRITTY_THEME_GITHUB) $(ALACRITTY_DIR)/alacritty-theme

$(ALACRITTY_DIR):
	mkdir -p $(ALACRITTY_DIR)
	ln -sf $(SELF_ALACRITTY_DIR)/alacritty.yml $(ALACRITTY_DIR)/alacritty.yml
	git clone --depth=1 $(ALACRITTY_THEME_GITHUB) $(ALACRITTY_DIR)/alacritty-theme
