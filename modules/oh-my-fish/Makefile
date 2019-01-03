OH_MY_FISH_DIR = ~/.config/omf
SHARE_OH_MY_FISH_DIR = ~/.local/share/omf
SELF_OH_MY_FISH_DIR = $(MODULE_DIR)/oh-my-fish

DISTCLEAN_TARGETS += oh-my-fish-distclean
INSTALL_TARGETS += oh-my-fish-install

.PHONY: oh-my-fish-distclean
oh-my-fish-distclean:
	rm -rf $(SHARE_OH_MY_FISH_DIR)
	rm -fr $(OH_MY_FISH_DIR)

.PHONY: oh-my-fish-install
oh-my-fish-install: $(SHARE_OH_MY_FISH_DIR)

$(SHARE_OH_MY_FISH_DIR): $(OH_MY_FISH_DIR)
	curl -L https://get.oh-my.fish | fish
	omf update

$(OH_MY_FISH_DIR):
	mkdir -p $(OH_MY_FISH_DIR)
	ln -sf $(SELF_OH_MY_FISH_DIR)/bundle $(OH_MY_FISH_DIR)/bundle
	ln -sf $(SELF_OH_MY_FISH_DIR)/channel $(OH_MY_FISH_DIR)/channel
	ln -sf $(SELF_OH_MY_FISH_DIR)/theme $(OH_MY_FISH_DIR)/theme
