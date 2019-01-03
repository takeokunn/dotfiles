;; ----- initialize ------ ;;

(add-to-list 'load-path (expand-file-name "~/.emacs.d/site-lisp"))

;; ----- theme ----- ;;

(load-theme 'tango-dark)

;; ----- config ------ ;;

;; initial view
(setq inhibit-startup-message t)

;; white space
(setq-default show-trailing-whitespace t)

;; editor bar
(menu-bar-mode -1)
(tool-bar-mode -1)
(global-linum-mode t)

;; auto generate file
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq auto-save-list-file-prefix nil)

;; delete a line with C-k
(setq kill-whole-line t)

;; ignore ring bell
(setq ring-bell-function 'ignore)

;; highlight
(show-paren-mode t)
(setq show-paren-style 'mixed)

;; tab
(setq-default tab-width 4 indent-tabs-mode nil)

;; ----- keybind ----- ;;

(define-key global-map (kbd "C-z") 'undo)
(define-key global-map (kbd "C-m") 'set-mark-command)


;; ----- package ----- ;;

(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; transpose-frame
(require 'transpose-frame)

;; auto-complete
(require 'auto-complete-config)
(ac-config-default)

;; drill-instructor
(require 'drill-instructor)
(setq drill-instructor-global t)

;; neotree
(require 'neotree)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;; move-text
(require 'move-text)

;; smooth-scroll
(require 'smooth-scroll)

;; ----- Lisp ----- ;;

;; slime
(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "sbcl")

;; ac-slime
(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)

;; paredit
(require 'paredit)
(autoload 'enable-paredit-mode "paredit" t)
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
(add-hook 'scheme-mode-hook 'enable-paredit-mode)
(eval-after-load "paredit"
  #'(define-key paredit-mode-map (kbd "C-c f") 'paredit-forward-slurp-sexp))
(eval-after-load "paredit"
  #'(define-key paredit-mode-map (kbd "C-c b") 'paredit-forward-barf-sexp))

;; rainbow-delimiters
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
