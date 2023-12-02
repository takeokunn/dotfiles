NIX_DIR = ~/.config/nix
SELF_NIX_DIR = $(MODULE_DIR)/nix

NIX_TARGETS += nix-install
NIX_CLEAN_TARGETS += nix-clean

.PHONY: nix-clean
nix-clean:
	rm -rf $(NIX_DIR)

.PHONY: nix-install
nix-install:
	mkdir -p $(NIX_DIR)
	ln -sf $(SELF_NIX_DIR)/nix.conf $(NIX_DIR)/nix.conf
