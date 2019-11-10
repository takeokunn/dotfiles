TOP_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
BIN_DIR = $(TOP_DIR)/bin
CONFIG_DIR = $(TOP_DIR)/config
MODULE_DIR = $(TOP_DIR)/modules
SOURCE_DIR = $(TOP_DIR)/src
TMP_DIR = $(TOP_DIR)/tmp

####################
#      targets     #
####################

# install
CORE_TARGETS +=
FISH_TARGETS +=
TEXTLINT_TARGETS +=
TMUX_TARGETS +=

# clean
CORE_CLEAN_TARGETS +=
FISH_CLEAN_TARGETS +=
TEXTLINT_CLEAN_TARGETS +=
TMUX_CLEAN_TARGETS +=

# update
FISH_UPDATE_TARGETS +=

####################
#      include     #
####################

-include $(SOURCE_DIR)/make/*.mk
-include $(MODULE_DIR)/*/Makefile
-include config/Makefile

####################
#     commands     #
####################

# install
.PHONY: core
core: $(CORE_TARGETS)

.PHONY: fish
fish: $(FISH_TARGETS)

.PHONY: textlint
textlint: $(TEXTLINT_TARGETS)

.PHONY: tmux
tmux: $(TMUX_TARGETS)

.PHONY: all
all: $(CORE_TARGETS) $(FISH_TARGETS) $(TEXTLINT_TARGETS) $(TMUX_TARGETS)

# clean
.PHONY: core-clean
core-clean: $(CORE_CLEAN_TARGETS)

.PHONY: fish-clean
fish-clean: $(FISH_CLEAN_TARGETS)

.PHONY: textlint-clean
textlint-clean: $(TEXTLINT_CLEAN_TARGETS)

.PHONY: tmux-clean
tmux-clean: $(TMUX_CLEAN_TARGETS)

.PHONY: clean
clean: $(CORE_CLEAN_TARGETS) $(FISH_CLEAN_TARGES) $(TEXTLINT_CLEAN_TARGES) $(TMUX_CLEAN_TARGETS)

# update
.PHONY: fish-update
fish-update: $(FISH_UPDATE_TARGETS)

.PHONY: update
update: $(FISH_UPDATE_TARGETS)
