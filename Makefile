.PHONY: all
all: initialize

TOP_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
BIN_DIR = $(TOP_DIR)/bin
CONFIG_DIR = $(TOP_DIR)/config
MODULE_DIR = $(TOP_DIR)/modules
SOURCE_DIR = $(TOP_DIR)/src
VAR_DIR = $(TOP_DIR)/var
VENDOR_DIR = $(VAR_DIR)/vendor

CLEAN_TARGETS +=
DISTCLEAN_TARGETS += clean
INITIALIZE_TARGETS += install
INSTALL_TARGETS +=
TEST_TARGETS +=
UPDATE_TARGETS +=

-include $(SOURCE_DIR)/make/*.mk
-include $(MODULE_DIR)/*/Makefile
-include config/Makefile

.PHONY: clean
clean: $(CLEAN_TARGETS)

.PHONY: distclean
distclean: $(DISTCLEAN_TARGETS)
	rm -rf $(VAR_DIR)/*

.PHONY: initialize
initialize: $(INITIALIZE_TARGETS)

.PHONY: install
install: $(INSTALL_TARGETS)

.PHONY: test
test: $(TEST_TARGETS)

.PHONY: update
update: $(UPDATE_TARGETS)
