NANO_DIR = ~/.nano
NANORC_GITHUB = https://github.com/scopatz/nanorc.git

CORE_CLEAN_TARGETS += nano-clean
CORE_TARGETS += nano-install

.PHONY: nano-clean
nano-clean:
	rm -fr $(NANO_DIR)

.PHONY: nano-install
nano-install: $(NANO_DIR)
	ln -sf $(NANO_DIR)/nanorc $(HOME)/.nanorc

$(NANO_DIR):
	git clone --depth=1 $(NANORC_GITHUB) $(NANO_DIR)
