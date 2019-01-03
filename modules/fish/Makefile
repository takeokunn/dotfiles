SELF_DIR = $(MODULE_DIR)/fish
FISH_DIR = ~/.config/fish

CLEAN_TARGETS += fish-clean
DISTCLEAN_TARGETS += fish-distclean
INSTALL_TARGETS += fish-install

.PHONY: fish-distclean
fish-distclean:

.PHONY: fish-clean
fish-clean:
	rm -rf $(FISH_DIR)

.PHONY: fish-install
fish-install: $(FISH_DIR)

$(FISH_DIR):
	mkdir -p $(FISH_DIR)
	ln -sf $(SELF_DIR)/config.fish $(FISH_DIR)/config.fish
