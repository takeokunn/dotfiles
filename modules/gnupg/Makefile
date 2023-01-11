GNUPG_DIR = ~/.gnupg
SELF_GNUPG_DIR = $(MODULE_DIR)/gnupg

GNUPG_CLEAN_TARGETS += gnupg-clean
GNUPG_TARGETS += gnupg-install

.PHONY: gnupg-clean
gnupg-clean:
	rm -fr $(GNUPG_DIR)

.PHONY: gnupg-install
gnupg-install: $(GNUPG_DIR)

ifeq ($(shell uname),Darwin)
$(GNUPG_DIR):
	mkdir -p $(GNUPG_DIR)
	ln -sf $(SELF_GNUPG_DIR)/gpg.conf $(GNUPG_DIR)/gpg.conf
	ln -sf $(SELF_GNUPG_DIR)/dirmngr.conf $(GNUPG_DIR)/dirmngr.conf
	ln -sf $(SELF_GNUPG_DIR)/gpg-agent.mac.conf $(GNUPG_DIR)/gpg-agent.conf
else
$(GNUPG_DIR):
	mkdir -p $(GNUPG_DIR)
	ln -sf $(SELF_GNUPG_DIR)/gpg.conf $(GNUPG_DIR)/gpg.conf
	ln -sf $(SELF_GNUPG_DIR)/dirmngr.conf $(GNUPG_DIR)/dirmngr.conf
endif
