BREWFILE_DIR = ~/.config/brewfile

BREWFILE_CLEAN_TARGETS += brew-clean
BREWFILE_TARGETS += brew-install

.PHONY: brew-install
brew-install: $(BREWFILE_DIR)
	cat $(CONFIG_DIR)/brew/*.Brewfile > $(BREWFILE_DIR)/Brewfile
	brew bundle install

$(BREWFILE_DIR):
	mkdir -p $(BREWFILE_DIR)

.PHONY: brew-clean
brew-clean:
	rm -r $(BREWFILE_DIR)
