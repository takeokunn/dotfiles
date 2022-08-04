NYXT_DIR = ~/.config/nyxt
SELF_NYXT_DIR = $(MODULE_DIR)/nyxt

NYXT_CLEAN_TARGETS += nyxt-clean
NYXT_TARGETS += nyxt-install

.PHONY: nyxt-install
nyxt-install: $(NYXT_DIR)

$(NYXT_DIR):
	mkdir -p $(NYXT_DIR)
	ln -sf $(SELF_NYXT_DIR)/config.lisp $(NYXT_DIR)/config.lisp
	ln -sf $(SELF_NYXT_DIR)/keybinds.lisp $(NYXT_DIR)/keybinds.lisp
	ln -sf $(SELF_NYXT_DIR)/statusline.lisp $(NYXT_DIR)/statusline.lisp
	ln -sf $(SELF_NYXT_DIR)/stylesheet.lisp $(NYXT_DIR)/stylesheet.lisp

.PHONY: nyxt-clean
nyxt-clean:
	rm -r $(NYXT_DIR)
