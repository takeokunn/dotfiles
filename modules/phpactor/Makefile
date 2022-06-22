PHPACTOR_DIR = ~/.config/phpactor
PHPACTOR_CACHE_DIR = ~/.cache/phpactor
SELF_PHPACTOR_DIR = $(MODULE_DIR)/phpactor

PHPACTOR_CLEAN_TARGETS += phpactor-clean
PHPACTOR_TARGETS += phpactor-install

.PHONY: phpactor-install
phpactor-install: $(PHPACTOR_DIR)

$(PHPACTOR_DIR):
	mkdir -p $(PHPACTOR_DIR)
	ln -sf $(SELF_PHPACTOR_DIR)/phpactor.yml $(PHPACTOR_DIR)/phpactor.yml

.PHONY: phpactor-clean
phpactor-clean:
	rm -r $(PHPACTOR_DIR)
	rm -r $(PHPACTOR_CACHE_DIR)
