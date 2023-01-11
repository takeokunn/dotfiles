COMPOSER_DIR = ~/.composer
SELF_COMPOSER_DIR = $(MODULE_DIR)/composer

COMPOSER_CLEAN_TARGETS += composer-clean
COMPOSER_TARGETS += composer-install
COMPOSER_UPDATE_TARGETS += composer-update

.PHONY: composer-install
composer-install: $(COMPOSER_DIR)

$(COMPOSER_DIR):
	mkdir -p $(COMPOSER_DIR)
	ln -sf $(SELF_COMPOSER_DIR)/config.json $(COMPOSER_DIR)/config.json
	ln -sf $(SELF_COMPOSER_DIR)/composer.json $(COMPOSER_DIR)/composer.json
	composer global install

.PHONY: composer-clean
composer-clean:
	rm -r $(COMPOSER_DIR)

.PHONY: composer-update
composer-update:
	composer global upgrade
