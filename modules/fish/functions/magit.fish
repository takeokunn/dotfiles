function magit ()
    set -l git_root (git rev-parse --show-toplevel)
    emacs -nw --eval "
(progn
  (add-to-list 'load-path (locate-user-emacs-file \"el-get/dash\"))
  (add-to-list 'load-path (locate-user-emacs-file \"el-get/compat\"))
  (add-to-list 'load-path (locate-user-emacs-file \"el-get/transient/lisp\"))
  (add-to-list 'load-path (locate-user-emacs-file \"el-get/ghub/lisp\"))
  (add-to-list 'load-path (locate-user-emacs-file \"el-get/magit-pop\"))
  (add-to-list 'load-path (locate-user-emacs-file \"el-get/with-editor/lisp\"))
  (add-to-list 'load-path (locate-user-emacs-file \"el-get/magit/lisp\"))
  (require 'magit)
  (setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1) (magit-status \"$git_root\"))"
end
