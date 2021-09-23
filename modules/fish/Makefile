FISH_DIR = ~/.config/fish
FISH_COMPLETION_DIR = $(FISH_DIR)/completions
FISH_FUNCTION_DIR = $(FISH_DIR)/functions
FISH_CONFIG_DIR = $(FISH_DIR)/conf.d
SELF_FISH_DIR = $(MODULE_DIR)/fish

FISH_FISHER_FILE = $(FISH_FUNCTION_DIR)/fisher.fish

FISH_DOCKER_COMPLETION_FILE = https://raw.githubusercontent.com/docker/docker-ce/master/components/cli/contrib/completion/fish/docker.fish
FISH_DOCKER_COMPOSE_COMPLETION_FILE = https://raw.githubusercontent.com/docker/compose/master/contrib/completion/fish/docker-compose.fish
FISH_FISHER_COMPLETION_FILE = https://raw.githubusercontent.com/jorgebucaran/fisher/main/completions/fisher.fish

FISH_TARGETS += fish-install
FISH_CLEAN_TARGETS += fish-clean
FISH_UPDATE_TARGETS += fish-update

.PHONY: fish-clean
fish-clean:
	rm -rf $(FISH_DIR)

.PHONY: fish-install
fish-install: $(FISH_DIR) $(FISH_FUNCTION_DIR) $(FISH_COMPLETION_DIR) $(FISH_CONFIG_DIR)
	fish -c "fisher update"

$(FISH_DIR):
	mkdir -p $(FISH_DIR)
	ln -sf $(SELF_FISH_DIR)/config.fish $(FISH_DIR)/config.fish
	ln -sf $(SELF_FISH_DIR)/fish_plugins $(FISH_DIR)/fish_plugins

$(FISH_FUNCTION_DIR):
	mkdir -p $(FISH_FUNCTION_DIR)
	ln -sf $(SELF_FISH_DIR)/functions/ghq_create.fish $(FISH_FUNCTION_DIR)/ghq_create.fish
	ln -sf $(SELF_FISH_DIR)/functions/ghq_org_all.fish $(FISH_FUNCTION_DIR)/ghq_org_all.fish
	ln -sf $(SELF_FISH_DIR)/functions/ghq_remove.fish $(FISH_FUNCTION_DIR)/ghq_remove.fish
	ln -sf $(SELF_FISH_DIR)/functions/ghq_remove_user.fish $(FISH_FUNCTION_DIR)/ghq_remove_user.fish
	ln -sf $(SELF_FISH_DIR)/functions/ghq_user_all.fish $(FISH_FUNCTION_DIR)/ghq_user_all.fish
	ln -sf $(SELF_FISH_DIR)/functions/ghq_users.fish $(FISH_FUNCTION_DIR)/ghq_users.fish
	ln -sf $(SELF_FISH_DIR)/functions/gibo_generate.fish $(FISH_FUNCTION_DIR)/gibo_generate.fish
	ln -sf $(SELF_FISH_DIR)/functions/logo.fish $(FISH_FUNCTION_DIR)/logo.fish
	ln -sf $(SELF_FISH_DIR)/functions/peco_ghq.fish $(FISH_FUNCTION_DIR)/peco_ghq.fish
	ln -sf $(SELF_FISH_DIR)/functions/peco_select_history.fish $(FISH_FUNCTION_DIR)/peco_select_history.fish
	ln -sf $(SELF_FISH_DIR)/functions/peco_z.fish $(FISH_FUNCTION_DIR)/peco_z.fish
	ln -sf $(SELF_FISH_DIR)/functions/tmux_attach_session_if_needed.fish $(FISH_FUNCTION_DIR)/tmux_attach_session_if_needed.fish
	curl https://git.io/fisher --create-dirs -sLo $(FISH_FISHER_FILE)

$(FISH_COMPLETION_DIR):
	mkdir -p $(FISH_COMPLETION_DIR)
	ln -sf $(SELF_FISH_DIR)/completions/aws.fish $(FISH_COMPLETION_DIR)/aws.fish
	ln -sf $(SELF_FISH_DIR)/completions/cdk.fish $(FISH_COMPLETION_DIR)/cdk.fish
	ln -sf $(SELF_FISH_DIR)/completions/pry.fish $(FISH_COMPLETION_DIR)/pry.fish
	ln -sf $(SELF_FISH_DIR)/completions/zat.fish $(FISH_COMPLETION_DIR)/zat.fish
	curl $(FISH_DOCKER_COMPLETION_FILE) -o $(FISH_COMPLETION_DIR)/docker.fish
	curl $(FISH_DOCKER_COMPOSE_COMPLETION_FILE) -o $(FISH_COMPLETION_DIR)/docker-compose.fish
	curl $(FISH_FISHER_COMPLETION_FILE) -o $(FISH_COMPLETION_DIR)/fisher.fish

$(FISH_CONFIG_DIR):
	mkdir -p $(FISH_CONFIG_DIR)
	ln -sf $(SELF_FISH_DIR)/conf.d/android.fish $(FISH_CONFIG_DIR)/android.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/composer.fish $(FISH_CONFIG_DIR)/composer.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/direnv.fish $(FISH_CONFIG_DIR)/direnv.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/gcloud.fish $(FISH_CONFIG_DIR)/gcloud.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/go.fish $(FISH_CONFIG_DIR)/go.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/java.fish $(FISH_CONFIG_DIR)/java.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/lisp.fish $(FISH_CONFIG_DIR)/lisp.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/llvm.fish $(FISH_CONFIG_DIR)/llvm.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/mac.fish $(FISH_CONFIG_DIR)/mac.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/nodejs.fish $(FISH_CONFIG_DIR)/nodejs.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/python.fish $(FISH_CONFIG_DIR)/python.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/ruby.fish $(FISH_CONFIG_DIR)/ruby.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/rust.fish $(FISH_CONFIG_DIR)/rust.fish
	ln -sf $(SELF_FISH_DIR)/conf.d/shell.fish $(FISH_CONFIG_DIR)/shell.fish

fish-update:
	fish -c "fisher update"
