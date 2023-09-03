ASDF_DIR = ~/.asdf
ASDF_PLUGIN_DIR = ~/.asdf/plugins
ASDF_PHP_PLUGIN_DIR = $(ASDF_PLUGIN_DIR)/php
ASDF_RUBY_PLUGIN_DIR = $(ASDF_PLUGIN_DIR)/ruby
ASDF_NODEJS_PLUGIN_DIR = $(ASDF_PLUGIN_DIR)/nodejs
ASDF_GOLANG_PLUGIN_DIR = $(ASDF_PLUGIN_DIR)/golang
ASDF_PYTHON_PLUGIN_DIR = $(ASDF_PLUGIN_DIR)/python
ASDF_PERL_PLUGIN_DIR = $(ASDF_PLUGIN_DIR)/perl

ASDF_TARGETS += asdf-install
ASDF_UPDATE_TARGETS += asdf-update
ASDF_CLEAN_TARGETS += asdf-clean

.PHONY: asdf-clean
asdf-clean:
	rm -fr $(ASDF_DIR)

.PHONY: asdf-install
asdf-install: $(ASDF_DIR) $(ASDF_PHP_PLUGIN_DIR) $(ASDF_RUBY_PLUGIN_DIR) $(ASDF_NODEJS_PLUGIN_DIR) $(ASDF_GOLANG_PLUGIN_DIR) $(ASDF_TERRAFORM_PLUGIN_DIR) $(ASDF_PYTHON_PLUGIN_DIR) $(ASDF_PERL_PLUGIN_DIR)

$(ASDF_DIR):
	git clone --depth 1 https://github.com/asdf-vm/asdf.git ~/.asdf

$(ASDF_PHP_PLUGIN_DIR):
	fish -c 'asdf plugin-add php https://github.com/asdf-community/asdf-php.git'
	fish -c 'asdf install php 7.4.27'
	fish -c 'asdf install php 8.1.0'
	fish -c 'asdf install php 8.2.3'
	fish -c 'asdf install php latest'
	fish -c 'asdf global php latest'

$(ASDF_RUBY_PLUGIN_DIR):
	fish -c 'asdf plugin-add ruby'
	fish -c 'asdf install ruby 3.2.0'
	fish -c 'asdf install ruby latest'
	fish -c 'asdf global ruby latest'

$(ASDF_NODEJS_PLUGIN_DIR):
	fish -c 'asdf plugin-add nodejs'
	fish -c 'asdf install nodejs 16.13.0'
	fish -c 'asdf install nodejs 18.15.0'
	fish -c 'asdf install nodejs latest'
	fish -c 'asdf global nodejs latest'

$(ASDF_GOLANG_PLUGIN_DIR):
	fish -c 'asdf plugin-add golang https://github.com/kennyp/asdf-golang.git'
	fish -c 'asdf install golang latest'
	fish -c 'asdf global golang latest'

$(ASDF_TERRAFORM_PLUGIN_DIR):
	fish -c 'asdf plugin add terraform'
	fish -c 'asdf install terraform 1.5.5'
	fish -c 'asdf install terraform latest'
	fish -c 'asdf global terraform latest'

$(ASDF_PYTHON_PLUGIN_DIR):
	fish -c 'asdf plugin-add python'
	fish -c 'asdf install python latest'
	fish -c 'asdf global python latest'

$(ASDF_PERL_PLUGIN_DIR):
	fish -c 'asdf plugin-add perl'
	fish -c 'asdf install perl latest'
	fish -c 'asdf global perl latest'

.PHONY: asdf-update
asdf-update:
	fish -c 'asdf update'
	fish -c 'asdf plugin update --all'

	fish -c 'asdf install php latest'
	fish -c 'asdf global php latest'

	fish -c 'asdf install ruby latest'
	fish -c 'asdf global ruby latest'

	fish -c 'asdf install nodejs latest'
	fish -c 'asdf global nodejs latest'

	fish -c 'asdf install golang latest'
	fish -c 'asdf global golang latest'

	fish -c 'asdf install terraform latest'
	fish -c 'asdf global terraform latest'

	fish -c 'asdf install python latest'
	fish -c 'asdf global python latest'

	fish -c 'asdf install perl latest'
	fish -c 'asdf global perl latest'
