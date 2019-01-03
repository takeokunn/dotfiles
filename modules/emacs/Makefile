EMACS_DIR = ~/.emacs.d
SELF_EMACS_DIR = $(MODULE_DIR)/emacs

DISTCLEAN_TARGETS += emacs-distclean
INSTALL_TARGETS += emacs-install
UPDATE_TARGETS += emacs-update

.PHONY: emacs-distclean
emacs-distclean:
	rm -rf $(EMACS_DIR)

.PHONY: emacs-install
emacs-install: $(EMACS_DIR)

$(EMACS_DIR):
	mkdir -p $(EMACS_DIR)
	curl -O http://beta.quicklisp.org/quicklisp.lisp | xargs sbcl --load
	ln -sfF $(SELF_EMACS_DIR)/.emacs.d ~/

.PHONY: emacs-update
emacs-update:
	git submodule update
