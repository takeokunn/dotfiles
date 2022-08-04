(in-package #:nyxt-user)

;; This only works on the versions of Nyxt after 2.2.4.
(define-configuration browser
  ((theme (make-instance
           'theme:theme
           :dark-p t
           :background-color "#282a36"
           :text-color "#f8f8f2"
           :accent-color "#ff5555"
           :primary-color "#50fa7b"
           :secondary-color "#bd93f9"
           :tertiary-color "#6272a4"
           :quaternary-color "#44475a"))))

;; Custom Dark-mode for webpages
(define-configuration nyxt/style-mode:dark-mode
  ((style #.(cl-css:css
             '((*
                :background-color "#282a36 !important"
                :background-image "none !important"
                :color "#f8f8f2")
               (a
                :background-color "#282a36 !important"
                :background-image "none !important"
                :color "#6272a4 !important"))))))

;;
;; Configurations for versions below 2.2.4:
;;
;;;; Configure Webpage Colors
;;(define-configuration window
;;  ((message-buffer-style
;;    (str:concat
;;     %slot-default%
;;     (cl-css:css
;;      '((body
;;         :background-color "#282a36"
;;         :color "#f8f8f2")))))))
;;
;;;; Configure Prompt Section
;;(define-configuration prompt-buffer
;;  ((style (str:concat
;;           %slot-default%
;;           (cl-css:css
;;            '((body
;;               :background-color "#282a36"
;;               :color "#f8f8f2")
;;              ("#prompt-area"
;;               :background-color "#282a36")
;;              ("#input"
;;               :background-color "#6272a4"
;;               :color "#f8f8f2")
;;              (".source-name"
;;               :color "#f8f8f2"
;;               :background-color "#bd93f9")
;;              (".source-content"
;;               :background-color "#282a36")
;;              (".source-content th"
;;               :border "1px solid #bd93f9"
;;               :background-color "#282a36")
;;              ("#selection"
;;               :background-color "#44475a"
;;               :color "#f8f8f2")
;;              (.marked :background-color "#ff5555"
;;                       :font-weight "bold"
;;                       :color "#f8f8f2")
;;              (.selected :background-color "#282a36"
;;                         :color "#f8f8f2")))))))
;;
;;(define-configuration internal-buffer
;;  ((style
;;    (str:concat
;;     %slot-default%
;;     (cl-css:css
;;      '((title
;;         :color "#ff79c6")
;;        (body
;;         :background-color "#21222C"
;;         :color "#f8f8f2")
;;        (hr
;;         :color "#44475a")
;;        (a
;;         :color "#6272a4")
;;        (.button
;;         :color "#f8f8f2"
;;         :background-color "#44475a")))))))
;;
;;;; Configure History Tree Mode
;;(define-configuration nyxt/history-tree-mode:history-tree-mode
;;  ((nyxt/history-tree-mode::style
;;    (str:concat
;;     %slot-default%
;;     (cl-css:css
;;      '((body
;;         :background-color "#21222C"
;;         :color "lightgray")
;;        (hr
;;         :color "darkgray")
;;        (a
;;         :color "#50fa7b")
;;        ("ul li::before"
;;         :background-color "#f8f8f2")
;;        ("ul li::after"
;;         :background-color "#f8f8f2")
;;        ("ul li:only-child::before"
;;         :background-color "#f8f8f2")))))))
;;
;;;; Highlight Hint Buttons
;;(define-configuration nyxt/web-mode:web-mode
;;  ((nyxt/web-mode:highlighted-box-style
;;    (cl-css:css
;;     '((".nyxt-hint.nyxt-highlight-hint"
;;        :background "#ff5555")))
;;    :documentation "The style of highlighted boxes, e.g. link hints.")))
;;
;;;; Configure StatusLines Styles
;;(define-configuration status-buffer
;;  ((style (str:concat
;;           %slot-default%
;;           (cl-css:css
;;            '(("#controls"
;;               :border-top "1px solid #6272a4"
;;               :background-color "#21222C")
;;              ("#url"
;;               :background-color "#21222C"
;;               :color "#f8f8f2"
;;               :border-top "1px solid #6272a4")
;;              ("#modes"
;;               :background-color "#21222C"
;;               :border-top "1px solid #6272a4")
;;              ("#tabs"
;;               :background-color "#6272a4"
;;               :color "#f8f8f2"
;;               :border-top "1px solid #6272a4")))))))
;;
;;(define-configuration nyxt/style-mode:dark-mode
;;  ((style #.(cl-css:css
;;             '((*
;;                :background-color "#21222C !important"
;;                :background-image "none !important"
;;                :color "#f8f8f2")
;;               (a
;;                :background-color "#21222C !important"
;;                :background-image "none !important"
;;                :color "#556B2F !important"))))))
