;; load path

;;(add-to-list 'load-path (concat dotfiles-dir "/plugins"))

;;(add-to-list 'load-path "~/.emacs.d/plugins/rinari")
;;(require 'rinari)

;; (setq load-path (cons (expand-file-name "~/.emacs.d/plugins/rails-reloaded") load-path))
;; (require 'rails-autoload)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/emacs-rails"))
(require 'rails)
;;(require 'whitespace)
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
;;(yas/initialize)
;;(yas/load-directory "~/.emacs.d/elpa/yasnippet-0.6.1/snippets")
(yas/global-mode 1)

;;(add-hook 'ruby-mode-hook 'whitespace-mode)
;;; rhtml-mode
;;(add-to-list 'load-path "~/.emacs.d/src/rhtml")
;;(require 'rhtml-mode)
;; (add-hook 'rhtml-mode-hook
;;      	  (lambda () (rinari-launch)))

;;(require 'rvm)
;;(rvm-use-default) ;; use rvm's default ruby for the current session

;;;
;;; octave mode
;;;
(autoload 'octave-mode "octave-mod" nil t)

(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))

(add-hook 'octave-mode-hook
          (lambda ()
            (abbrev-mode 1)
            (auto-fill-mode 1)
            (if (eq window-system 'x)
                (font-lock-mode 1))))


;; External web browser
(setq browse-url-browser-function 'browse-url-generic
       browse-url-generic-program  "/usr/bin/google-chrome")

;;;
;;; buffer switching
;;;
;;;(iswitchb-mode 1)

;;;
;;; skeleton rules
;;; 
(define-skeleton jlex-rule
  "jlex rule"
  ""
  "" str " {" \n
  " return new Symbol(TokenConstants." @ _ ");" \n ;
  "}")

;;(define-abbrev java-mode-abbrev-table "jlr"
;;  "" 'jlex-rule)

;; package manager
;; (require 'package)
;; (package-initialize)



;; (custom-set-variables
;;   ;; custom-set-variables was added by Custom.
;;   ;; If you edit it by hand, you could mess it up, so be careful.
;;   ;; Your init file should contain only one such instance.
;;   ;; If there is more than one, they won't work right.
;;  '(org-agenda-todo-ignore-deadlines (quote all))
;;  '(org-agenda-todo-ignore-scheduled (quote all))
;;  '(org-capture-templates (quote (("t" "task" entry (file "~/org/notes.org") "")))))
;; (custom-set-faces
;;   ;; custom-set-faces was added by Custom.
;;   ;; If you edit it by hand, you could mess it up, so be careful.
;;   ;; Your init file should contain only one such instance.
;;   ;; If there is more than one, they won't work right.
;;  )
