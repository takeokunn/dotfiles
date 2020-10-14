FISH_DIR = ~/.config/fish
FISH_COMPLETION_DIR = ~/.config/fish/completions
SELF_FISH_DIR = $(MODULE_DIR)/fish

LOCAL_FILE = $(SELF_FISH_DIR)/local.fish
LOCAL_FILE_SAMPLE = $(SELF_FISH_DIR)/local.fish.sample
FUNCTIONS_FILE = $(SELF_FISH_DIR)/functions.fish
FUNCTIONS_FILE_SAMPLE = $(SELF_FISH_DIR)/functions.fish.sample

FISH_CLEAN_TARGETS += fish-shell-clean
FISH_TARGETS += fish-shell-install

.PHONY: fish-shell-clean
fish-shell-clean:
	rm -rf $(FISH_DIR)

.PHONY: fish-shell-install
fish-shell-install: $(LOCAL_FILE) $(FUNCTIONS_FILE) $(FISH_DIR) $(FISH_COMPLETION_DIR)

$(LOCAL_FILE):
	cp $(LOCAL_FILE_SAMPLE) $(LOCAL_FILE)

$(FUNCTIONS_FILE):
	cp $(FUNCTIONS_FILE_SAMPLE) $(FUNCTIONS_FILE)

$(FISH_DIR):
	mkdir -p $(FISH_DIR)
	ln -sf $(SELF_FISH_DIR)/config.fish $(FISH_DIR)/config.fish
	ln -sf $(SELF_FISH_DIR)/local.fish $(FISH_DIR)/local.fish
	ln -sf $(SELF_FISH_DIR)/functions.fish $(FISH_DIR)/functions.fish

$(FISH_COMPLETION_DIR):
	mkdir -p $(FISH_COMPLETION_DIR)
	ln -sf $(SELF_FISH_DIR)/completions/ros.fish $(FISH_COMPLETION_DIR)/ros.fish
