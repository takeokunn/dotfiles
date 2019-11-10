TMUX_DIR = ~/.tmux/plugins/tpm
TMUX_GITHUB_URL = https://github.com/tmux-plugins/tpm

TMUX_CLEAN_TARGETS += tmux-clean
TMUX_TARGETS += tmux-install

.PHONY: tmux-clean
tmux-clean:
	rm -fr $(TMUX_DIR)

tmux-install: $(TMUX_DIR)

$(TMUX_DIR):
	git clone $(TMUX_GITHUB_URL) $(TMUX_DIR)
