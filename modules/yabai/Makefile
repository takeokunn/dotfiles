YABAI_DIR = ~/.config/yabai
SELF_YABAI_DIR = $(MODULE_DIR)/yabai

YABAI_CLEAN_TARGETS += yabai-clean
YABAI_TARGETS += yabai-install

.PHONY: yabai-install
yabai-install: $(YABAI_DIR)

$(YABAI_DIR):
	mkdir -p $(YABAI_DIR)
	ln -sf $(SELF_YABAI_DIR)/yabairc $(YABAI_DIR)/yabairc

.PHONY: yabai-clean
yabai-clean:
	rm -r $(YABAI_DIR)
