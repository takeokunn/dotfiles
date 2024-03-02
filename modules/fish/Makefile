FISH_DIR = ~/.config/fish
FISH_COMPLETION_DIR = $(FISH_DIR)/completions
FISH_FUNCTION_DIR = $(FISH_DIR)/functions
FISH_CONFIG_DIR = $(FISH_DIR)/conf.d
SELF_FISH_DIR = $(MODULE_DIR)/fish

FISH_FISHER_FILE = $(FISH_FUNCTION_DIR)/fisher.fish

FISH_DOCKER_COMPLETION_FILE = https://raw.githubusercontent.com/docker/docker-ce/master/components/cli/contrib/completion/fish/docker.fish
FISH_DOCKER_COMPOSE_COMPLETION_FILE = https://raw.githubusercontent.com/docker/compose/master/contrib/completion/fish/docker-compose.fish
FISH_FISHER_COMPLETION_FILE = https://raw.githubusercontent.com/jorgebucaran/fisher/main/completions/fisher.fish
FISH_GUIX_CONPLETION_FILE = https://raw.githubusercontent.com/lfam/guix/master/etc/completion/fish/guix.fish
FISH_ASDF_CONPLETION_FILE = https://raw.githubusercontent.com/asdf-vm/asdf/master/completions/asdf.fish
FISH_HOME_MANAGER_CONPLETION_FILE = https://raw.githubusercontent.com/nix-community/home-manager/master/home-manager/completion.fish

FISH_TARGETS += fish-install
FISH_CLEAN_TARGETS += fish-clean
FISH_UPDATE_TARGETS += fish-update

.PHONY: fish-clean
fish-clean:
	rm -rf $(FISH_DIR)

.PHONY: fish-install
fish-install: $(FISH_DIR) $(FISH_FUNCTION_DIR) $(FISH_COMPLETION_DIR) $(FISH_CONFIG_DIR)

$(FISH_DIR):
	mkdir -p $(FISH_DIR)
	ln -sf $(SELF_FISH_DIR)/config.fish $(FISH_DIR)/config.fish
	ln -sf $(SELF_FISH_DIR)/fish_plugins $(FISH_DIR)/fish_plugins

$(FISH_FUNCTION_DIR):
	mkdir -p $(FISH_FUNCTION_DIR)
	ln -sf $(SELF_FISH_DIR)/functions/calculate_oidc_thumbprint.fish $(FISH_FUNCTION_DIR)/calculate_oidc_thumbprint.fish
	ln -sf $(SELF_FISH_DIR)/functions/fish_prompt.fish $(FISH_FUNCTION_DIR)/fish_prompt.fish
	ln -sf $(SELF_FISH_DIR)/functions/fish_user_key_bindings.fish $(FISH_FUNCTION_DIR)/fish_user_key_bindings.fish
	ln -sf $(SELF_FISH_DIR)/functions/ghq_create.fish $(FISH_FUNCTION_DIR)/ghq_create.fish
	ln -sf $(SELF_FISH_DIR)/functions/ghq_org_all.fish $(FISH_FUNCTION_DIR)/ghq_org_all.fish
	ln -sf $(SELF_FISH_DIR)/functions/ghq_remove.fish $(FISH_FUNCTION_DIR)/ghq_remove.fish
	ln -sf $(SELF_FISH_DIR)/functions/ghq_remove_user.fish $(FISH_FUNCTION_DIR)/ghq_remove_user.fish
	ln -sf $(SELF_FISH_DIR)/functions/ghq_user_all.fish $(FISH_FUNCTION_DIR)/ghq_user_all.fish
	ln -sf $(SELF_FISH_DIR)/functions/ghq_users.fish $(FISH_FUNCTION_DIR)/ghq_users.fish
	ln -sf $(SELF_FISH_DIR)/functions/gibo_generate.fish $(FISH_FUNCTION_DIR)/gibo_generate.fish
	ln -sf $(SELF_FISH_DIR)/functions/growi_create_page.fish $(FISH_FUNCTION_DIR)/growi_create_page.fish
	ln -sf $(SELF_FISH_DIR)/functions/kill_process.fish $(FISH_FUNCTION_DIR)/kill_process.fish
	ln -sf $(SELF_FISH_DIR)/functions/logo.fish $(FISH_FUNCTION_DIR)/logo.fish
	ln -sf $(SELF_FISH_DIR)/functions/loop.fish $(FISH_FUNCTION_DIR)/loop.fish
	ln -sf $(SELF_FISH_DIR)/functions/ll.fish $(FISH_FUNCTION_DIR)/ll.fish
	ln -sf $(SELF_FISH_DIR)/functions/myip.fish $(FISH_FUNCTION_DIR)/myip.fish
	ln -sf $(SELF_FISH_DIR)/functions/peco_genact.fish $(FISH_FUNCTION_DIR)/peco_genact.fish
	ln -sf $(SELF_FISH_DIR)/functions/peco_growi.fish $(FISH_FUNCTION_DIR)/peco_growi.fish
	ln -sf $(SELF_FISH_DIR)/functions/peco_nodebrew.fish $(FISH_FUNCTION_DIR)/peco_nodebrew.fish
	ln -sf $(SELF_FISH_DIR)/functions/peco_redmine_search_issue.fish $(FISH_FUNCTION_DIR)/peco_redmine_search_issue.fish
	ln -sf $(SELF_FISH_DIR)/functions/peco_redmine_my_issue.fish $(FISH_FUNCTION_DIR)/peco_redmine_my_issue.fish
	ln -sf $(SELF_FISH_DIR)/functions/peco_ghq.fish $(FISH_FUNCTION_DIR)/peco_ghq.fish
	ln -sf $(SELF_FISH_DIR)/functions/peco_select_history.fish $(FISH_FUNCTION_DIR)/peco_select_history.fish
	ln -sf $(SELF_FISH_DIR)/functions/peco_z.fish $(FISH_FUNCTION_DIR)/peco_z.fish
	ln -sf $(SELF_FISH_DIR)/functions/prompt_pwd.fish $(FISH_FUNCTION_DIR)/prompt_pwd.fish
	ln -sf $(SELF_FISH_DIR)/functions/skylark.fish $(FISH_FUNCTION_DIR)/skylark.fish
	ln -sf $(SELF_FISH_DIR)/functions/tmux_attach_session_if_needed.fish $(FISH_FUNCTION_DIR)/tmux_attach_session_if_needed.fish
	curl https://git.io/fisher --create-dirs -sLo $(FISH_FISHER_FILE)

$(FISH_COMPLETION_DIR):
	mkdir -p $(FISH_COMPLETION_DIR)
	ln -sf $(SELF_FISH_DIR)/completions/actionlint.fish $(FISH_COMPLETION_DIR)/actionlint.fish
	ln -sf $(SELF_FISH_DIR)/completions/aws.fish $(FISH_COMPLETION_DIR)/aws.fish
	ln -sf $(SELF_FISH_DIR)/completions/cdk.fish $(FISH_COMPLETION_DIR)/cdk.fish
	ln -sf $(SELF_FISH_DIR)/completions/clasp.fish $(FISH_COMPLETION_DIR)/clasp.fish
	ln -sf $(SELF_FISH_DIR)/completions/cmigemo.fish $(FISH_COMPLETION_DIR)/cmigemo.fish
	ln -sf $(SELF_FISH_DIR)/completions/copilot.fish $(FISH_COMPLETION_DIR)/copilot.fish
	ln -sf $(SELF_FISH_DIR)/completions/ecschedule.fish $(FISH_COMPLETION_DIR)/ecschedule.fish
	ln -sf $(SELF_FISH_DIR)/completions/ecspresso.fish $(FISH_COMPLETION_DIR)/ecspresso.fish
	ln -sf $(SELF_FISH_DIR)/completions/guix.fish $(FISH_COMPLETION_DIR)/guix.fish
	ln -sf $(SELF_FISH_DIR)/completions/mitamae.fish $(FISH_COMPLETION_DIR)/mitamae.fish
	ln -sf $(SELF_FISH_DIR)/completions/pass.fish $(FISH_COMPLETION_DIR)/pass.fish
	ln -sf $(SELF_FISH_DIR)/completions/pod.fish $(FISH_COMPLETION_DIR)/pod.fish
	ln -sf $(SELF_FISH_DIR)/completions/pry.fish $(FISH_COMPLETION_DIR)/pry.fish
	ln -sf $(SELF_FISH_DIR)/completions/shellcheck.fish $(FISH_COMPLETION_DIR)/shellcheck.fish
	ln -sf $(SELF_FISH_DIR)/completions/skylark.fish $(FISH_COMPLETION_DIR)/skylark.fish
	ln -sf $(SELF_FISH_DIR)/completions/solc.fish $(FISH_COMPLETION_DIR)/solc.fish
	ln -sf $(SELF_FISH_DIR)/completions/tbls.fish $(FISH_COMPLETION_DIR)/tbls.fish
	ln -sf $(SELF_FISH_DIR)/completions/terminal-notifier.fish $(FISH_COMPLETION_DIR)/terminal-notifier.fish
	ln -sf $(SELF_FISH_DIR)/completions/tfenv.fish $(FISH_COMPLETION_DIR)/tfenv.fish
	ln -sf $(SELF_FISH_DIR)/completions/waypoint.fish $(FISH_COMPLETION_DIR)/waypoint.fish
	ln -sf $(SELF_FISH_DIR)/completions/zat.fish $(FISH_COMPLETION_DIR)/zat.fish
	curl $(FISH_DOCKER_COMPLETION_FILE) -o $(FISH_COMPLETION_DIR)/docker.fish
	curl $(FISH_DOCKER_COMPOSE_COMPLETION_FILE) -o $(FISH_COMPLETION_DIR)/docker-compose.fish
	curl $(FISH_FISHER_COMPLETION_FILE) -o $(FISH_COMPLETION_DIR)/fisher.fish
	curl $(FISH_GUIX_CONPLETION_FILE) -o $(FISH_COMPLETION_DIR)/guix.fish
	curl $(FISH_ASDF_CONPLETION_FILE) -o $(FISH_COMPLETION_DIR)/asdf.fish
	curl $(FISH_HOME_MANAGER_CONPLETION_FILE) -o $(FISH_COMPLETION_DIR)/home-manager.fish

$(FISH_CONFIG_DIR):
	mkdir -p $(FISH_CONFIG_DIR)
	ln -sf $(SELF_FISH_DIR)/conf.d/aws.fish $(FISH_CONFIG_DIR)/aws.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/asdf.fish $(FISH_CONFIG_DIR)/asdf.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/direnv.fish $(FISH_CONFIG_DIR)/direnv.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/docker.fish $(FISH_CONFIG_DIR)/docker.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/gcloud.fish $(FISH_CONFIG_DIR)/gcloud.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/gh.fish $(FISH_CONFIG_DIR)/gh.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/go.fish $(FISH_CONFIG_DIR)/go.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/gpg.fish $(FISH_CONFIG_DIR)/gpg.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/java.fish $(FISH_CONFIG_DIR)/java.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/lisp.fish $(FISH_CONFIG_DIR)/lisp.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/llvm.fish $(FISH_CONFIG_DIR)/llvm.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/mac.fish $(FISH_CONFIG_DIR)/mac.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/nodejs.fish $(FISH_CONFIG_DIR)/nodejs.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/nix.fish $(FISH_CONFIG_DIR)/nix.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/php.fish $(FISH_CONFIG_DIR)/php.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/ruby.fish $(FISH_CONFIG_DIR)/ruby.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/rust.fish $(FISH_CONFIG_DIR)/rust.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/shell.fish $(FISH_CONFIG_DIR)/shell.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/android.fish $(FISH_CONFIG_DIR)/android.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/thefuck.fish $(FISH_CONFIG_DIR)/thefuck.fish

.PHONY: fish-update
fish-update:
	fish -c "fisher update"
