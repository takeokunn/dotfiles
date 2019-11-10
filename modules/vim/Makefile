VIM_DIR = ~/.config/vim
VIM_CACHE_DIR = ~/.cache/dein
SELF_VIM_DIR = $(MODULE_DIR)/vim

VIM_DEIN_URL = curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh

CORE_CLEAN_TARGETS += vim-clean
CORE_TARGETS += vim-install

.PHONY: vim-clean
vim-clean:
	rm -rf $(VIM_DIR)
	rm -rf $(VIM_CACHE_DIR)

.PHONY: vim-install
vim-install: $(VIM_CACHE_DIR)

$(VIM_CACHE_DIR):
	mkdir -p $(VIM_DIR)
	mkdir -p $(VIM_CACHE_DIR)
	curl $(VIM_DEIN_URL) > vim_install.sh
	sh vim_install.sh $(VIM_CACHE_DIR)
	rm vim_install.sh
	ln -sf $(SELF_VIM_DIR)/dein.toml $(VIM_DIR)/dein.toml
