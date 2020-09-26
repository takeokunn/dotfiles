SPACEMACS_DIR = ~/.emacs.d
SPACEMACS_GITHUB = https://github.com/syl20bnr/spacemacs.git

SPACEMACS_CLEAN_TARGETS += spacemacs-clean
SPACEMACS_TARGETS += spacemacs-install

.PHONY: spacemacs-clean
spacemacs-clean:
	rm -rf $(SPACEMACS_DIR)

.PHONY: spacemacs-install
spacemacs-install: $(SPACEMACS_DIR)

$(SPACEMACS_DIR):
	git clone --depth=1 $(SPACEMACS_GITHUB) $(SPACEMACS_DIR)
