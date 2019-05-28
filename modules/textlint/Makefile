TEXTLINT_INSTALL_DIRCTORY = ~/.npm-global
CLEAN_TARGETS += textlint-clean
INITIALIZE_TARGETS += textlint-initialize

.PHONY: textlint-clean
textlint-clean:
	rm -fr $(TEXTLINT_INSTALL_DIRCTORY)

.PHONY: textlint-initialize
textlint-initialize: $(TEXTLINT_INSTALL_DIRCTORY)

$(TEXTLINT_INSTALL_DIRCTORY):
	mkdir -p $(TEXTLINT_INSTALL_DIRCTORY)
	npm config set prefix $(TEXTLINT_INSTALL_DIRCTORY)
	npm install -g textlint
	npm install -g textlint-rule-preset-ja-spacing textlint-rule-preset-ja-technical-writing textlint-rule-spellcheck-tech-word
