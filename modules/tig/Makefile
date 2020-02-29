TIG_DIR = ~/.tig
TIG_GITHUB_URL = https://github.com/edentsai/tig-theme-molokai-like

TIG_CLEAN_TARGETS += tig-clean
TIG_TARGETS += tig-install

.PHONY: tig-clean
tig-clean:
	rm -fr $(TIG_DIR)

tig-install: $(TIG_DIR)

$(TIG_DIR):
	git clone $(TIG_GITHUB_URL) $(TIG_DIR)
