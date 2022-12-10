TEXTLINT_INSTALL_DIRCTORY = ~/.npm-global

TEXTLINT_CLEAN_TARGETS += textlint-clean
TEXTLINT_TARGETS += textlint-install

.PHONY: textlint-clean
textlint-clean:
	npm uninstall -g \
		textlint \
		textlint-rule-preset-ja-spacing \
		textlint-rule-preset-ja-technical-writing \
		textlint-rule-spellcheck-tech-word \
		textlint-rule-ginger \
		textlint-rule-spellchecker \
		textlint-rule-write-good \
		textlint-filter-rule-node-types \
		textlint-rule-no-dropping-the-ra \
		textlint-plugin-org

.PHONY: textlint-install
textlint-install: $(TEXTLINT_INSTALL_DIRCTORY)
	npm install -g \
		textlint \
		textlint-filter-rule-node-types \
		textlint-plugin-org \
		textlint-rule-ginger \
		textlint-rule-no-dropping-the-ra \
		textlint-rule-preset-ja-spacing \
		textlint-rule-preset-ja-technical-writing \
		textlint-rule-spellcheck-tech-word \
		textlint-rule-spellchecker \
		textlint-rule-write-good

$(TEXTLINT_INSTALL_DIRCTORY):
	mkdir -p $(TEXTLINT_INSTALL_DIRCTORY)
	npm config set prefix $(TEXTLINT_INSTALL_DIRCTORY)
