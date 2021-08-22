BASH_PROFILE = ~/.bash_profile*

BASH_IT_DIR = ~/.bash_it
BASH_IT_SCRIPT = ~/.bash_it/install.sh
BASH_IT_GITHUB = https://github.com/revans/bash-it.git

CORE_CLEAN_TARGETS += bash-clean
CORE_TARGETS += bash-install

.PHONY: bash-clean
bash-clean:
	rm -f $(BASH_PROFILE)
	rm -rf $(BASH_IT_DIR)

.PHONY: bash-install
bash-install: $(BASH_IT_DIR)

$(BASH_IT_DIR):
	git clone --depth=1 $(BASH_IT_GITHUB) $(BASH_IT_DIR)
	bash $(BASH_IT_SCRIPT) -s
