FISH_DIR = ~/.config/fish
SELF_FISH_DIR = $(MODULE_DIR)/fish

CLEAN_TARGETS += fish-clean
DISTCLEAN_TARGETS += fish-distclean
INSTALL_TARGETS += fish-install

.PHONY: fish-distclean
fish-distclean:

.PHONY: fish-clean
fish-clean:
	rm -rf $(FISH_DIR)

.PHONY: fish-install
fish-install: $(SELF_FISH_DIR/local.fish) $(FISH_DIR)

$(SELF_FISH_DIR/local.fish):
	cp $(SELF_FISH_DIR/local.fish.sample) $(SELF_FISH_DIR/local.fish)

$(FISH_DIR):
	mkdir -p $(FISH_DIR)
	ln -sf $(SELF_FISH_DIR)/config.fish $(FISH_DIR)/config.fish
	ln -sf $(SELF_FISH_DIR)/local.fish $(FISH_DIR)/local.fish
