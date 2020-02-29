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
NVIM_TARGETS +=
LEM_TARGES +=

# clean
CORE_CLEAN_TARGETS +=
FISH_CLEAN_TARGETS +=
TEXTLINT_CLEAN_TARGETS +=
TMUX_CLEAN_TARGETS +=
NVIM_CLEAN_TARGETS +=
LEM_CLEAN_TARGES +=

# update
FISH_UPDATE_TARGETS +=
LEM_UPDATE_TARGES +=

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

.PHONY: lem
lem: $(LEM_TARGES)

.PHONY: nvim
nvim: $(NVIM_TARGETS)

.PHONY: all
all: $(CORE_TARGETS) $(FISH_TARGETS) $(TEXTLINT_TARGETS) $(TMUX_TARGETS)

# clean
.PHONY: core-clean
core-clean: $(CORE_CLEAN_TARGETS)

.PHONY: fish-clean
fish-clean: $(FISH_CLEAN_TARGETS)

.PHONY: lem-clean
lem-clean: $(LEM_CLEAN_TARGES)

.PHONY: nvim-clean
nvim-clean: $(NVIM_CLEAN_TARGETS)

.PHONY: clean
clean: $(CORE_CLEAN_TARGETS) $(FISH_CLEAN_TARGETS) $(TEXTLINT_CLEAN_TARGETS) $(TMUX_CLEAN_TARGETS)

# update
.PHONY: fish-update
fish-update: $(FISH_UPDATE_TARGETS)

.PHONY: update
update: $(FISH_UPDATE_TARGETS) $(LEM_UPDATE_TARGES)
