FISHER_DIR = ~/.config/fish
FISHER_COMPLETION_DIR = $(FISHER_DIR)/completions
FISHER_FUNCTION_DIR = $(FISHER_DIR)/functions
FISHER_CONFIG_DIR = $(FISHER_DIR)/conf.d
SELF_FISHER_DIR = $(MODULE_DIR)/fisher

FISHER_FISHER_FILE = $(FISHER_FUNCTION_DIR)/fisher.fish

FISHER_GHQ_COMPLETION_FILE = https://raw.githubusercontent.com/decors/fish-ghq/master/completions/ghq.fish
FISHER_DOCKER_COMPLETION_FILE = https://raw.githubusercontent.com/docker/docker-ce/master/components/cli/contrib/completion/fish/docker.fish
FISHER_DOCKER_COMPOSE_COMPLETION_FILE = https://raw.githubusercontent.com/docker/compose/master/contrib/completion/fish/docker-compose.fish

.PHONY: fisher-shell-clean
fisher-shell-clean:
	rm -rf $(FISHER_DIR)

.PHONY: fisher-shell-install
fisher-shell-install: $(FISHER_DIR) $(FISHER_FUNCTION_DIR) $(FISHER_COMPLETION_DIR) $(FISHER_CONFIG_DIR)

$(FISHER_DIR):
	mkdir -p $(FISHER_DIR)
	ln -sf $(SELF_FISHER_DIR)/config.fish $(FISHER_DIR)/config.fish
	ln -sf $(SELF_FISHER_DIR)/fish_plugins $(FISHER_DIR)/fish_plugins

$(FISHER_FUNCTION_DIR):
	mkdir -p $(FISHER_FUNCTION_DIR)
	ln -sf $(SELF_FISHER_DIR)/functions/ghq_create.fish $(FISHER_FUNCTION_DIR)/ghq_create.fish
	ln -sf $(SELF_FISHER_DIR)/functions/ghq_org_all.fish $(FISHER_FUNCTION_DIR)/ghq_org_all.fish
	ln -sf $(SELF_FISHER_DIR)/functions/ghq_remove.fish $(FISHER_FUNCTION_DIR)/ghq_remove.fish
	ln -sf $(SELF_FISHER_DIR)/functions/ghq_remove_user.fish $(FISHER_FUNCTION_DIR)/ghq_remove_user.fish
	ln -sf $(SELF_FISHER_DIR)/functions/ghq_user_all.fish $(FISHER_FUNCTION_DIR)/ghq_user_all.fish
	ln -sf $(SELF_FISHER_DIR)/functions/ghq_users.fish $(FISHER_FUNCTION_DIR)/ghq_users.fish
	ln -sf $(SELF_FISHER_DIR)/functions/gibo_generate.fish $(FISHER_FUNCTION_DIR)/gibo_generate.fish
	ln -sf $(SELF_FISHER_DIR)/functions/logo.fish $(FISHER_FUNCTION_DIR)/logo.fish
	ln -sf $(SELF_FISHER_DIR)/functions/peco_ghq.fish $(FISHER_FUNCTION_DIR)/peco_ghq.fish
	ln -sf $(SELF_FISHER_DIR)/functions/peco_select_history.fish $(FISHER_FUNCTION_DIR)/peco_select_history.fish
	ln -sf $(SELF_FISHER_DIR)/functions/peco_z.fish $(FISHER_FUNCTION_DIR)/peco_z.fish
	ln -sf $(SELF_FISHER_DIR)/functions/tmux_attach_session_if_needed.fish $(FISHER_FUNCTION_DIR)/tmux_attach_session_if_needed.fish
	curl https://git.io/fisher --create-dirs -sLo $(FISHER_FISHER_FILE)

$(FISHER_COMPLETION_DIR):
	mkdir -p $(FISHER_COMPLETION_DIR)
	ln -sf $(SELF_FISHER_DIR)/completions/aws.fish $(FISHER_COMPLETION_DIR)/aws.fish
	ln -sf $(SELF_FISHER_DIR)/completions/cdk.fish $(FISHER_COMPLETION_DIR)/cdk.fish
	ln -sf $(SELF_FISHER_DIR)/completions/pry.fish $(FISHER_COMPLETION_DIR)/pry.fish
	ln -sf $(SELF_FISHER_DIR)/completions/ros.fish $(FISHER_COMPLETION_DIR)/ros.fish
	ln -sf $(SELF_FISHER_DIR)/completions/sbcl.fish $(FISHER_COMPLETION_DIR)/sbcl.fish
	ln -sf $(SELF_FISHER_DIR)/completions/zat.fish $(FISHER_COMPLETION_DIR)/zat.fish
	curl $(FISHER_GHQ_COMPLETION_FILE) -o $(FISHER_COMPLETION_DIR)/ghq.fish
	curl $(FISHER_DOCKER_COMPLETION_FILE) -o $(FISHER_COMPLETION_DIR)/docker.fish
	curl $(FISHER_DOCKER_COMPOSE_COMPLETION_FILE) -o $(FISHER_COMPLETION_DIR)/docker-compose.fish

$(FISHER_CONFIG_DIR):
	mkdir -p $(FISHER_CONFIG_DIR)
	ln -sf $(SELF_FISHER_DIR)/conf.d/android.fish $(FISHER_CONFIG_DIR)/android.fish
	ln -sf $(SELF_FISHER_DIR)/conf.d/composer.fish $(FISHER_CONFIG_DIR)/composer.fish
	ln -sf $(SELF_FISHER_DIR)/conf.d/direnv.fish $(FISHER_CONFIG_DIR)/direnv.fish
	ln -sf $(SELF_FISHER_DIR)/conf.d/gcloud.fish $(FISHER_CONFIG_DIR)/gcloud.fish
	ln -sf $(SELF_FISHER_DIR)/conf.d/go.fish $(FISHER_CONFIG_DIR)/go.fish
	ln -sf $(SELF_FISHER_DIR)/conf.d/java.fish $(FISHER_CONFIG_DIR)/java.fish
	ln -sf $(SELF_FISHER_DIR)/conf.d/lisp.fish $(FISHER_CONFIG_DIR)/lisp.fish
	ln -sf $(SELF_FISHER_DIR)/conf.d/mac.fish $(FISHER_CONFIG_DIR)/mac.fish
	ln -sf $(SELF_FISHER_DIR)/conf.d/nodejs.fish $(FISHER_CONFIG_DIR)/nodejs.fish
	ln -sf $(SELF_FISHER_DIR)/conf.d/python.fish $(FISHER_CONFIG_DIR)/python.fish
	ln -sf $(SELF_FISHER_DIR)/conf.d/ruby.fish $(FISHER_CONFIG_DIR)/ruby.fish
	ln -sf $(SELF_FISHER_DIR)/conf.d/rust.fish $(FISHER_CONFIG_DIR)/rust.fish
	ln -sf $(SELF_FISHER_DIR)/conf.d/shell.fish $(FISHER_CONFIG_DIR)/shell.fish
