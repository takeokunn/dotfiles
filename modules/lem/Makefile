SELF_LEM_DIR = $(MODULE_DIR)/lem

LEM_CLEAN_TARGES += lem-clean
LEM_TARGES += lem-install
LEM_UPDATE_TARGES += lem-update

.PHONY: lem-clean
lem-clean:
	ros delete cxxxr/lem
	ros delete koji-kojiro/lem-pygments-colorthemes
	rm -rf ~/.lem

.PHONY: lem-install
lem-install:
	ros install cxxxr/lem
	ros install koji-kojiro/lem-pygments-colorthemes
	ln -sf $(SELF_LEM_DIR) ~/.lem

.PHONY: lem-update
lem-update:
	ros update cxxxr/lem
	ros update koji-kojiro/lem-pygments-colorthemes
