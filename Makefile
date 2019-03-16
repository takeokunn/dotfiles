.PHONY: all
all: initialize

TOP_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
BIN_DIR = $(TOP_DIR)/bin
CONFIG_DIR = $(TOP_DIR)/config
MODULE_DIR = $(TOP_DIR)/modules
SOURCE_DIR = $(TOP_DIR)/src
TMP_DIR = $(TOP_DIR)/tmp

CLEAN_TARGETS +=
INITIALIZE_TARGETS += install
INSTALL_TARGETS +=
UPDATE_TARGETS +=
SERVER_TARGETS +=
TEST_TARGETS +=

-include $(SOURCE_DIR)/make/*.mk
-include $(MODULE_DIR)/*/Makefile
-include config/Makefile

.PHONY: clean
clean: $(CLEAN_TARGETS)

.PHONY: initialize
initialize: $(INITIALIZE_TARGETS)

.PHONY: install
install: $(INSTALL_TARGETS)

.PHONY: update
update: $(UPDATE_TARGETS)

.PHONY: server
update: $(SERVER_TARGETS)

.PHONY: test
test: $(TEST_TARGETS)
