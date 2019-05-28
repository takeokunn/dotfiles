CLEAN_TARGETS += textlint-clean
INITIALIZE_TARGETS += textlint-initialize

.PHONY: textlint-clean
textlint-clean:
	npm uninstall -g textlint
	npm uninstall -g textlint-rule-preset-ja-spacing textlint-rule-preset-ja-technical-writing textlint-rule-spellcheck-tech-word

.PHONY: textlint-initialize
textlint-initialize:
	npm install -g textlint
	npm install -g textlint-rule-preset-ja-spacing textlint-rule-preset-ja-technical-writing textlint-rule-spellcheck-tech-word
