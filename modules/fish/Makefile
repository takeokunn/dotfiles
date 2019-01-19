FISH_DIR = ~/.config/fish
SELF_FISH_DIR = $(MODULE_DIR)/fish

LOCAL_FILE = $(SELF_FISH_DIR)/local.fish
LOCAL_FILE_SAMPLE = $(SELF_FISH_DIR)/local.fish.sample

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

$(FISH_DIR): $(LOCAL_FILE)
	mkdir -p $(FISH_DIR)
	ln -sf $(SELF_FISH_DIR)/config.fish $(FISH_DIR)/config.fish
	ln -sf $(SELF_FISH_DIR)/local.fish $(FISH_DIR)/local.fish


$(LOCAL_FILE):
	cp $(LOCAL_FILE_SAMPLE) $(LOCAL_FILE)
