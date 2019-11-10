VIM_DIR = ~/.vim
VIM_DEIN_DIR = ~/.cache/dein

VIM_DEIN_URL = curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh

CORE_CLEAN_TARGETS += vim-clean
CORE_TARGETS += vim-install

.PHONY: vim-clean
vim-clean:
	rm -rf $(VIM_DIR)
	rm -rf $(VIM_DEIN_DIR)

.PHONY: vim-install
vim-install: $(VIM_DEIN_DIR)

$(VIM_DEIN_DIR):
	mkdir -p $(VIM_DEIN_DIR)
	curl $(VIM_DEIN_URL) > vim_install.sh
	sh vim_install.sh $(VIM_DEIN_DIR)
	rm vim_install.sh
