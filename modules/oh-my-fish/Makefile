OH_MY_FISH_DIR = ~/.config/omf
OH_MY_FISH_SHARE_DIR = ~/.local/share/omf
OH_MY_FISH_INSTALL_DIR = $(TMP_DIR)/install
OH_MY_FISH_MODULE_DIR = $(MODULE_DIR)/oh-my-fish

DISTCLEAN_TARGETS += oh-my-fish-distclean
INSTALL_TARGETS += oh-my-fish-install
UPDATE_TARGETS += oh-my-fish-update

.PHONY: oh-my-fish-distclean
oh-my-fish-distclean:
	rm -rf $(OH_MY_FISH_SHARE_DIR)
	rm -fr $(OH_MY_FISH_DIR)
	rm -fr $(OH_MY_FISH_INSTALL_DIR)

.PHONY: oh-my-fish-install
oh-my-fish-install: $(OH_MY_FISH_INSTALL_DIR)

$(OH_MY_FISH_INSTALL_DIR): $(OH_MY_FISH_DIR)
	curl -L https://get.oh-my.fish > $(TMP_DIR)/install

$(OH_MY_FISH_DIR):
	mkdir -p $(OH_MY_FISH_DIR)
	ln -sf $(OH_MY_FISH_MODULE_DIR)/bundle $(OH_MY_FISH_DIR)/bundle
	ln -sf $(OH_MY_FISH_MODULE_DIR)/channel $(OH_MY_FISH_DIR)/channel
	ln -sf $(OH_MY_FISH_MODULE_DIR)/theme $(OH_MY_FISH_DIR)/theme


.PHONY: oh-my-fish-update
oh-my-fish-update:
	fish $(TMP_DIR)/install -y --path=$(OH_MY_FISH_SHARE_DIR) --config=$(OH_MY_FISH_DIR)
