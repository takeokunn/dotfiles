CARGO_DIR = ~/.cargo
SELF_CARGO_DIR = $(MODULE_DIR)/cargo

CARGO_CLEAN_TARGETS += cargo-clean
CARGO_TARGETS += cargo-install

.PHONY: cargo-install
cargo-install: $(CARGO_DIR)

$(CARGO_DIR):
	mkdir -p $(CARGO_DIR)
	ln -sf $(SELF_CARGO_DIR)/config $(CARGO_DIR)/config

.PHONY: cargo-clean
cargo-clean:
	rm -r $(CARGO_DIR)
