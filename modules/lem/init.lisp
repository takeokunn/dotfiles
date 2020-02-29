(in-package :lem-user)

(setf *enable-syntax-highlight* t)

(define-key *global-keymap* "C-m" 'mark-set)
(define-key *global-keymap* "C-x C-o" 'other-window)
(define-key *global-keymap* "C-z" 'undo)

(lem:add-hook lem:*find-file-hook*
              (lambda (buffer)
                (when (eq (buffer-major-mode buffer) 'lem-lisp-mode:lisp-mode)
                  (change-buffer-mode buffer 'lem-paredit-mode:paredit-mode))))
