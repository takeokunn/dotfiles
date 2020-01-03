NANO_DIR = ~/.nano
NANORC_FILE = ~/.nanorc
NANORC_GITHUB = https://github.com/Naereen/nanorc.git

CORE_CLEAN_TARGETS += nano-clean
CORE_TARGETS += nano-install

.PHONY: nano-clean
nano-clean:
	rm -fr $(NANO_DIR)

.PHONY: nano-install
nano-install: $(NANO_DIR)

$(NANO_DIR):
	git clone $(NANORC_GITHUB) $(NANO_DIR)
	ln -s ~/.nano/.nanorc ~/.nanorc
