function magit ()
    set -l git_root (git rev-parse --show-toplevel)
    emacs -nw --eval "(progn (setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1) (magit-status \"$git_root\"))"
end
