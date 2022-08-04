(in-package #:nyxt-user)

;; Set StatusLines Mode Icons
(define-configuration status-buffer ((glyph-mode-presentation-p t)))
(define-configuration nyxt/force-https-mode:force-https-mode ((glyph "")))
(define-configuration nyxt/blocker-mode:blocker-mode ((glyph "")))
(define-configuration nyxt/proxy-mode:proxy-mode ((glyph "")))
(define-configuration nyxt/reduce-tracking-mode:reduce-tracking-mode  ((glyph "")))
(define-configuration nyxt/certificate-exception-mode:certificate-exception-mode ((glyph "")))
(define-configuration nyxt/style-mode:style-mode ((glyph "")))
(define-configuration nyxt/help-mode:help-mode ((glyph "")))
(define-configuration nyxt/web-mode:web-mode ((glyph "ω")))
(define-configuration nyxt/auto-mode:auto-mode ((glyph "α")))

;;;; Set StatusLines URL Icons
;;(defun laconic-format-status-load-status (buffer)
;;  (if (web-buffer-p buffer)
;;      (case (slot-value buffer 'nyxt::load-status)
;;        (:unloaded "∅")
;;        (:loading "∞")
;;        (:finished ""))
;;      ""))
;;
;;;; Remove https/www from URL
;;(defun laconic-format-status-url (buffer)
;;  (markup:markup
;;   (:span
;;       (format nil "~a ~a"
;;               (laconic-format-status-load-status buffer)
;;               (ppcre:regex-replace-all
;;                "(https://|www\\.|/$)"
;;                (render-url (url buffer))
;;                "")))))
;;
;;;; Set StatusLines Webpage Loadtime
;;(defun laconic-format-status-modes (buffer window)
;;  (str:concat
;;   (format-status-modes buffer window)
;;   " | "
;;   (format nil "~d:~d"
;;           (mod (+ 5 (local-time:timestamp-hour (local-time:now))) 24)
;;           (local-time:timestamp-minute (local-time:now)))))
;;
;;;; Configure StatusLines Design
;;(defun laconic-format-status (window)
;;  (flet ((input-indicating-background ()
;;           (format nil "background-color: ~:[#50fa7b~;#ff5555~]"
;;                   (or (current-mode 'vi-insert)
;;                       (current-mode 'input-edit)))))
;;    (let ((buffer (current-buffer window)))
;;      (markup:markup
;;       (:div :id "container"
;;             (:div :id "controls"
;;                   :style (input-indicating-background)
;;                   (markup:raw ""))
;;             (:div :class "arrow arrow-right"
;;                   :style (input-indicating-background) "")
;;             (:div :id "url"
;;                   (markup:raw
;;                    (laconic-format-status-url buffer)))
;;             (:div :class "arrow arrow-right"
;;                   :style "background-color:#21222C" "")
;;             (:div :id "tabs"
;;                   (title buffer))
;;             (:div :class "arrow arrow-left"
;;                   :style "background-color:#21222C" "")
;;             (:div :id "modes"
;;                   :title (nyxt::list-modes buffer)
;;                   (laconic-format-status-modes buffer window)))))))
;;
;;;; Define Current Configuration
;;(define-configuration window
;;  ((status-formatter #'laconic-format-status)))
