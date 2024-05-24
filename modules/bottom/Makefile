BOTTOM_DIR = ~/.config/bottom
SELF_BOTTOM_DIR = $(MODULE_DIR)/bottom

BOTTOM_CLEAN_TARGETS += bottom-clean
BOTTOM_TARGETS += bottom-install

.PHONY: bottom-install
bottom-install: $(BOTTOM_DIR)
	 ln -sf $(SELF_BOTTOM_DIR)/bottom.toml $(BOTTOM_DIR)/bottom.toml

$(BOTTOM_DIR):
	mkdir -p $(BOTTOM_DIR)

.PHONY: bottom-clean
bottom-clean:
	rm -r $(BOTTOM_DIR)
