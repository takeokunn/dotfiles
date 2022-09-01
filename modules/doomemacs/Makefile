DOOMEMACS_DIR = ~/.emacs.d
DOOMEMACS_GITHUB = https://github.com/doomemacs/doomemacs

DOOMEMACS_CLEAN_TARGETS += doomemacs-clean
DOOMEMACS_TARGETS += doomemacs-install

.PHONY: doomemacs-clean
doomemacs-clean:
	rm -rf $(DOOMEMACS_DIR)

.PHONY: doomemacs-install
doomemacs-install: $(DOOMEMACS_DIR)

$(DOOMEMACS_DIR):
	git clone --depth=1 $(DOOMEMACS_GITHUB) $(DOOMEMACS_DIR)
