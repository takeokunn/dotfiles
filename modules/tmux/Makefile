TMUX_DIR = ~/.tmux
TMUX_TPM_DIR = ~/.tmux/plugins/tpm
TMUX_GITHUB_URL = https://github.com/tmux-plugins/tpm

TMUX_CLEAN_TARGETS += tmux-clean
TMUX_TARGETS += tmux-install

.PHONY: tmux-clean
tmux-clean:
	rm -fr $(TMUX_DIR)

tmux-install: $(TMUX_TPM_DIR)

$(TMUX_TPM_DIR):
	mkdir -p $(TMUX_TPM_DIR)
	git clone --depth=1 $(TMUX_GITHUB_URL) $(TMUX_TPM_DIR)
