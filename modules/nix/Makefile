NIX_DIR = ~/.config/nix
NIX_HOME_MANAGER_DIR = ~/.config/home-manager
SELF_NIX_DIR = $(MODULE_DIR)/nix

NIX_CLEAN_TARGETS += nix-clean
NIX_TARGETS += nix-install
NIX_UPDATE_TARGETS += nix-update

.PHONY: nix-clean
nix-clean:
	rm -rf $(NIX_DIR)
	rm -rf $(NIX_HOME_MANAGER_DIR)

.PHONY: nix-install
nix-install: $(NIX_DIR) $(NIX_HOME_MANAGER_DIR)
	nix-channel --add https://nixos.org/channels/nixpkgs-unstable
	nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
	nix-channel --update

$(NIX_DIR):
	mkdir -p $(NIX_DIR)
	ln -sf $(SELF_NIX_DIR)/nix.conf $(NIX_DIR)/nix.conf

$(NIX_HOME_MANAGER_DIR):
	mkdir -p $(NIX_HOME_MANAGER_DIR)
	ln -sf $(SELF_NIX_DIR)/home.nix $(NIX_HOME_MANAGER_DIR)/home.nix

.PHONY: nix-update
nix-update:
	nix-shell '<home-manager>' -A install
