PECO_DIR = ~/.config/peco
SELF_PECO_DIR = $(MODULE_DIR)/peco

CORE_CLEAN_TARGETS += peco-clean
CORE_TARGETS += peco-install

.PHONY: peco-install
peco-install: $(PECO_DIR)

$(PECO_DIR):
	mkdir -p $(PECO_DIR)
	ln -sf $(SELF_PECO_DIR)/config.json $(PECO_DIR)/config.json

.PHONY: peco-clean
peco-clean:
	rm -r $(PECO_DIR)
