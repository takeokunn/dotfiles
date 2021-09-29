PECO_DIR = ~/.config/peco

PECO_CLEAN_TARGETS += peco-clean
PECO_TARGETS += peco-install

.PHONY: peco-install
peco-install: $(PECO_DIR)

$(PECO_DIR):
	mkdir -p $(PECO_DIR)
	ln -sf $(PECO_DIR)/config.json $(PECO_DIR)/config.json

.PHONY: peco-clean
peco-clean:
	rm -r $(PECO_DIR)
