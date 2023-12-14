NIX_DIR = ~/.config/nix
NIXPKGS_DIR = ~/.nixpkgs
SELF_NIX_DIR = $(MODULE_DIR)/nix

NIX_CLEAN_TARGETS += nix-clean
NIX_TARGETS += nix-install
NIX_UPDATE_TARGETS += nix-update

.PHONY: nix-clean
nix-clean:
	rm -rf $(NIX_DIR)
	rm -rf $(NIXPKGS_DIR)

.PHONY: nix-install
nix-install: $(NIX_DIR) $(NIXPKGS_DIR)
	nix-channel --add https://nixos.org/channels/nixpkgs-unstable
	nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
	nix-channel --update

$(NIX_DIR):
	mkdir -p $(NIX_DIR)
	ln -sf $(SELF_NIX_DIR)/nix.conf $(NIX_DIR)/nix.conf

$(NIXPKGS_DIR):
	mkdir -p $(NIXPKGS_DIR)
	ln -sf $(SELF_NIX_DIR)/home.nix $(NIXPKGS_DIR)/home.nix
	nix-shell '<home-manager>' -A install

.PHONY: nix-update
nix-update:
