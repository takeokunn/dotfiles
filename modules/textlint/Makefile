TEXTLINT_INSTALL_DIRCTORY = ~/.npm-global

TEXTLINT_CLEAN_TARGETS += textlint-clean
TEXTLINT_TARGETS += textlint-install

.PHONY: textlint-clean
textlint-clean:
	npm uninstall -g textlint
	npm uninstall -g textlint-rule-preset-ja-spacing textlint-rule-preset-ja-technical-writing textlint-rule-spellcheck-tech-word

.PHONY: textlint-install
textlint-install: $(TEXTLINT_INSTALL_DIRCTORY)

$(TEXTLINT_INSTALL_DIRCTORY):
	mkdir -p $(TEXTLINT_INSTALL_DIRCTORY)
	npm config set prefix $(TEXTLINT_INSTALL_DIRCTORY)
	npm install -g textlint
	npm install -g textlint-rule-preset-ja-spacing textlint-rule-preset-ja-technical-writing textlint-rule-spellcheck-tech-word
