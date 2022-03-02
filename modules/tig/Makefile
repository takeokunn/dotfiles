TIG_DIR = ~/.tig
TIG_GITHUB_URL = https://github.com/edentsai/tig-theme-molokai-like

CORE_CLEAN_TARGETS += tig-clean
CORE_TARGETS += tig-install

.PHONY: tig-clean
tig-clean:
	rm -fr $(TIG_DIR)

.PHONY: tig-install
tig-install: $(TIG_DIR)
$(TIG_DIR):
	git clone --depth=1 $(TIG_GITHUB_URL) $(TIG_DIR)
