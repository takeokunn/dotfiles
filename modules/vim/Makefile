VIM_DIR = ~/.vim
VIM_BUNDLE_DIR = ~/.vim/bundle

NEOBUNDLE_URL = https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh

CORE_CLEAN_TARGETS += vim-clean
CORE_TARGETS += vim-install

.PHONY: vim-clean
vim-clean:
	rm -rf $(VIM_DIR)

.PHONY: vim-install
vim-install: $(VIM_BUNDLE_DIR)

$(VIM_BUNDLE_DIR):
	mkdir -p $(VIM_BUNDLE_DIR)
	curl $(NEOBUNDLE_URL) > install.sh
	sh install.sh
	rm install.sh
