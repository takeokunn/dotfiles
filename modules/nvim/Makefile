VIM_DIR = ~/.config/nvim
VIM_COC_DIR = ~/.config/coc
VIM_TOML_DIR = $(VIM_DIR)/toml
VIM_PLUGINS_DIR = $(VIM_DIR)/plugins
VIM_CACHE_DIR = ~/.cache/dein

SELF_VIM_DIR = $(MODULE_DIR)/nvim
SELF_VIM_TOML_DIR = $(MODULE_DIR)/nvim/toml
SELF_VIM_PLUGINS_DIR = $(MODULE_DIR)/nvim/plugins

VIM_DEIN_URL = https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh

NVIM_CLEAN_TARGETS += nvim-clean
NVIM_TARGETS += nvim-install

.PHONY: nvim-clean
nvim-clean:
	rm -rf $(VIM_DIR)
	rm -rf $(VIM_CACHE_DIR)
	rm -fr $(VIM_COC_DIR)

.PHONY: nvim-install
nvim-install: $(VIM_DIR) $(VIM_CACHE_DIR) $(VIM_TOML_DIR) $(VIM_PLUGINS_DIR)

$(VIM_DIR):
	mkdir -p $(VIM_DIR)
	ln -sf $(SELF_VIM_DIR)/init.vim $(VIM_DIR)/init.vim

$(VIM_CACHE_DIR):
	mkdir -p $(VIM_CACHE_DIR)
	curl $(VIM_DEIN_URL) > vim_install.sh
	sh vim_install.sh $(VIM_CACHE_DIR)
	rm vim_install.sh

$(VIM_TOML_DIR):
	mkdir -p $(VIM_TOML_DIR)
	ln -sf $(SELF_VIM_TOML_DIR)/basic.toml $(VIM_TOML_DIR)/basic.toml
	ln -sf $(SELF_VIM_TOML_DIR)/cursor.toml $(VIM_TOML_DIR)/cursor.toml
	ln -sf $(SELF_VIM_TOML_DIR)/ddc.toml $(VIM_TOML_DIR)/ddc.toml
	ln -sf $(SELF_VIM_TOML_DIR)/ddu.toml $(VIM_TOML_DIR)/ddu.toml
	ln -sf $(SELF_VIM_TOML_DIR)/joke.toml $(VIM_TOML_DIR)/joke.toml
	ln -sf $(SELF_VIM_TOML_DIR)/language.toml $(VIM_TOML_DIR)/language.toml
	ln -sf $(SELF_VIM_TOML_DIR)/lsp.toml $(VIM_TOML_DIR)/lsp.toml
	ln -sf $(SELF_VIM_TOML_DIR)/theme.toml $(VIM_TOML_DIR)/theme.toml
	ln -sf $(SELF_VIM_TOML_DIR)/utility.toml $(VIM_TOML_DIR)/utility.toml

$(VIM_PLUGINS_DIR):
	mkdir -p $(VIM_PLUGINS_DIR)
	ln -sf $(SELF_VIM_PLUGINS_DIR)/ddc.vim $(VIM_PLUGINS_DIR)/ddc.vim
	ln -sf $(SELF_VIM_PLUGINS_DIR)/ddu.vim $(VIM_PLUGINS_DIR)/ddu.vim
	ln -sf $(SELF_VIM_PLUGINS_DIR)/defx.vim $(VIM_PLUGINS_DIR)/defx.vim
	ln -sf $(SELF_VIM_PLUGINS_DIR)/lightline.vim $(VIM_PLUGINS_DIR)/lightline.vim
	ln -sf $(SELF_VIM_PLUGINS_DIR)/orgmode.vim $(VIM_PLUGINS_DIR)/orgmode.vim
