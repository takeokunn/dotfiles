TEXTLINT_INSTALL_DIRCTORY = ~/.npm-global

TEXTLINT_CLEAN_TARGETS += textlint-npm-clean
TEXTLINT_TARGETS += textlint-npm-install

.PHONY: textlint-npm-clean
textlint-npm-clean:
	rm -fr $(TEXTLINT_INSTALL_DIRCTORY)

.PHONY: textlint-npm-install
textlint-npm-install: $(TEXTLINT_INSTALL_DIRCTORY)

$(TEXTLINT_INSTALL_DIRCTORY):
	mkdir -p $(TEXTLINT_INSTALL_DIRCTORY)
	npm config set prefix $(TEXTLINT_INSTALL_DIRCTORY)
	npm install -g textlint
	npm install -g textlint-rule-preset-ja-spacing textlint-rule-preset-ja-technical-writing textlint-rule-spellcheck-tech-word
