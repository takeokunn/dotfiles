SKHD_DIR = ~/.config/skhd
SELF_SKHD_DIR = $(MODULE_DIR)/skhd

SKHD_CLEAN_TARGETS += skhd-clean
SKHD_TARGETS += skhd-install

.PHONY: skhd-install
skhd-install: $(SKHD_DIR)

$(SKHD_DIR):
	mkdir -p $(SKHD_DIR)
	ln -sf $(SELF_SKHD_DIR)/skhdrc $(SKHD_DIR)/skhdrc

.PHONY: skhd-clean
skhd-clean:
	rm -r $(SKHD_DIR)
