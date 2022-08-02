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
BASH_TARGETS +=
FISH_TARGETS +=
NANO_TARGETS +=
TEXTLINT_TARGETS +=
TMUX_TARGETS +=
NVIM_TARGETS +=
LEM_TARGETS +=
IRB_TARGETS +=
SPACEMACS_TARGETS +=
SKK_TARGETS +=
PECO_TARGETS +=
ALACRITTY_TARGETS +=
PHPACTOR_TARGETS +=

# clean
CORE_CLEAN_TARGETS +=
BASH_CLEAN_TARGETS +=
FISH_CLEAN_TARGETS +=
NANO_CLEAN_TARGETS +=
TEXTLINT_CLEAN_TARGETS +=
TMUX_CLEAN_TARGETS +=
NVIM_CLEAN_TARGETS +=
LEM_CLEAN_TARGETS +=
IRB_CLEAN_TARGETS +=
SPACEMACS_CLEAN_TARGETS +=
SKK_CLEAN_TARGETS +=
PECO_CLEAN_TARGETS +=
ALACRITTY_CLEAN_TARGETS +=
PHPACTOR_CLEAN_TARGETS +=

# update
NPM_UPDATE_TARGET +=
FISH_UPDATE_TARGETS +=
LEM_UPDATE_TARGETS +=
IRB_UPDATE_TARGETS +=

####################
#      include     #
####################

-include $(SOURCE_DIR)/make/*.mk
-include $(MODULE_DIR)/*/Makefile

####################
#     commands     #
####################

# install
.PHONY: core
core: $(CORE_TARGETS)

.PHONY: all
all: $(CORE_TARGETS) $(BASH_TARGETS) $(FISH_TARGETS) $(NANO_TARGETS) $(TEXTLINT_TARGETS) $(TMUX_TARGETS) $(IRB_TARGETS) $(SPACEMACS_TARGETS) $(PECO_TARGETS) $(ALACRITTY_TARGETS) $(PHPACTOR_TARGETS)

# clean
.PHONY: core-clean
core-clean: $(CORE_CLEAN_TARGETS)

.PHONY: clean
clean: $(CORE_CLEAN_TARGETS) $(BASH_CLEAN_TARGETS) $(FISH_CLEAN_TARGETS) $(NANO_CLEAN_TARGETS) $(TEXTLINT_CLEAN_TARGETS) $(TMUX_CLEAN_TARGETS) $(IRB_CLEAN_TARGETS) $(SPACEMACS_TARGETS) $(SKK_CLEAN_TARGETS) $(PECO_CLEAN_TARGETS) $(ALACRITTY_CLEAN_TARGETS) $(PHPACTOR_CLEAN_TARGETS)

# update
.PHONY: update
update: $(FISH_UPDATE_TARGETS) $(LEM_UPDATE_TARGES) $(IRB_UPDATE_TARGETS) $(NPM_UPDATE_TARGET)
