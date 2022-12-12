GH_DIR = ~/.config/gh
SELF_GH_DIR = $(MODULE_DIR)/gh

GH_CLEAN_TARGETS += gh-clean
GH_TARGETS += gh-install

.PHONY: gh-clean
gh-clean:
	rm -fr $(GH_DIR)

.PHONY: gh-install
gh-install: $(GH_DIR)

$(GH_DIR):
	mkdir -p $(GH_DIR)
	ln -sf $(SELF_GH_DIR)/config.yml $(GH_DIR)/config.yml
