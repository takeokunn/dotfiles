SKK_DIR=~/.skk-jisyo

SKK_CLEAN_TARGETS += skk-clean
SKK_TARGETS += skk-install

.PHONY: skk-install
skk-install: $(SKK_DIR)

$(SKK_DIR):
	mkdir -p $(SKK_DIR)
	curl https://raw.githubusercontent.com/uasi/skk-emoji-jisyo/master/SKK-JISYO.emoji.utf8 > $(SKK_DIR)/SKK-JISYO.emoji.utf8
	curl https://raw.githubusercontent.com/KeenS/SKK_JISYO.wiktionary/master/SKK_JISYO.seikana > $(SKK_DIR)/SKK_JISYO.seikana
	curl https://raw.githubusercontent.com/KeenS/SKK_JISYO.wiktionary/master/SKK_JISYO.shikakugoma > $(SKK_DIR)/SKK_JISYO.shikakugoma

.PHONY: skk-clean
skk-clean:
	rm -r $(SKK_DIR)
