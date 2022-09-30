(in-package #:nyxt-user)

(define-configuration buffer
    ((default-modes (append '(nyxt::emacs-normal-mode) %slot-default%))))

(define-configuration prompt-buffer
    ((default-modes (append '(nyxt::emacs-insert-mode) %slot-default%))))
