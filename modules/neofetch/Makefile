NEOFETCH_DIR = ~/.config/neofetch
SELF_NEOFETCH_DIR = $(MODULE_DIR)/neofetch

NEOFETCH_CLEAN_TARGETS += neofetch-clean
NEOFETCH_TARGETS += neofetch-install

.PHONY: neofetch-clean
neofetch-clean:
	rm -fr $(NEOFETCH_DIR)

.PHONY: neofetch-install
neofetch-install: $(NEOFETCH_DIR)

$(NEOFETCH_DIR):
	mkdir -p $(NEOFETCH_DIR)
	ln -sf $(SELF_NEOFETCH_DIR)/config.conf $(NEOFETCH_DIR)/config.conf
