SELF_DIR = $(MODULE_DIR)/oh-my-fish
SHARE_DIR = ~/.local/share/omf
OH_MY_FISH_DIR = ~/.config/omf

DISTCLEAN_TARGETS += oh-my-fish-distclean
INSTALL_TARGETS += oh-my-fish-install

.PHONY: oh-my-fish-distclean
oh-my-fish-distclean:
	rm -rf $(SHARE_DIR)
	rm -fr $(OH_MY_FISH_DIR)

.PHONY: oh-my-fish-install
oh-my-fish-install: $(SHARE_DIR)

$(SHARE_DIR): $(OH_MY_FISH_DIR)
	curl -L https://get.oh-my.fish | fish
	omf update

$(OH_MY_FISH_DIR):
	mkdir -p $(OH_MY_FISH_DIR)
	ln -sf $(SELF_DIR)/bundle $(OH_MY_FISH_DIR)/bundle
	ln -sf $(SELF_DIR)/channel $(OH_MY_FISH_DIR)/channel
	ln -sf $(SELF_DIR)/theme $(OH_MY_FISH_DIR)/theme
