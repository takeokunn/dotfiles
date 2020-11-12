VIM_DIR = ~/.config/nvim
VIM_CACHE_DIR = ~/.cache/dein
SELF_VIM_DIR = $(MODULE_DIR)/nvim

VIM_DEIN_URL = https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh

NVIM_CLEAN_TARGETS += nvim-clean
NVIM_TARGETS += nvim-install

.PHONY: nvim-clean
nvim-clean:
	rm -rf $(VIM_DIR)
	rm -rf $(VIM_CACHE_DIR)

.PHONY: nvim-install
nvim-install: $(VIM_CACHE_DIR)
	ln -sf $(SELF_VIM_DIR)/init.vim $(VIM_DIR)/init.vim
	ln -sf $(SELF_VIM_DIR)/dein.toml $(VIM_DIR)/dein.toml

$(VIM_CACHE_DIR):
	mkdir -p $(VIM_DIR)
	mkdir -p $(VIM_CACHE_DIR)
	curl $(VIM_DEIN_URL) > vim_install.sh
	sh vim_install.sh $(VIM_CACHE_DIR)
	rm vim_install.sh
