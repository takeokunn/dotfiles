NYXT_DIR = ~/.config/nyxt
SELF_NYXT_DIR = $(MODULE_DIR)/nyxt

NYXT_CLEAN_TARGETS += nyxt-clean
NYXT_TARGETS += nyxt-install

.PHONY: nyxt-install
nyxt-install: $(NYXT_DIR)

$(NYXT_DIR):
	mkdir -p $(NYXT_DIR)
	ln -sf $(SELF_NYXT_DIR)/init.lisp $(NYXT_DIR)/init.lisp
	ln -sf $(SELF_NYXT_DIR)/emacs.lisp $(NYXT_DIR)/emacs.lisp
	ln -sf $(SELF_NYXT_DIR)/keybind.lisp $(NYXT_DIR)/keybind.lisp
	ln -sf $(SELF_NYXT_DIR)/style.lisp $(NYXT_DIR)/style.lisp
	ln -sf $(SELF_NYXT_DIR)/statusline.lisp $(NYXT_DIR)/statusline.lisp

.PHONY: nyxt-clean
nyxt-clean:
	rm -r $(NYXT_DIR)
