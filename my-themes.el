;; (load-theme 'zenburn t)

;; If you want to use powerline, (require 'powerline) must be
;; before (require 'moe-theme).

(require 'powerline)
;; (setq powerline-arrow-shape 'slant-right)

;;(require 'moe-theme)

;;(setq moe-theme-highlight-buffer-id t)

;;(moe-theme-set-color 'cyan)

;;(moe-dark)

;;(load-theme 'moe-dark t)
;;or
;;(load-theme 'moe-light t)

;; Resize titles
;;(setq moe-theme-resize-markdown-title '(2.0 1.7 1.5 1.3 1.0 1.0))
;;(setq moe-theme-resize-org-title '(2.2 1.8 1.6 1.4 1.2 1.0 1.0 1.0 1.0))
;;(setq moe-theme-resize-rst-title '(2.0 1.7 1.5 1.3 1.1 1.0))


;;(moe-theme-set-color 'green)
;; (Available colors: blue, orange, green ,magenta, yellow, purple, red, cyan, w/b.)

;;(powerline-moe-theme)
;;(setq moe-light-pure-white-background-in-terminal t)
;; (require 'moe-theme-switcher)
;; (setq calendar-latitude +25)
;; (setq calendar-longitude +121)
;;(show-paren-mode t)
;;(setq show-paren-style 'expression)
;; (load-theme 'material t)


(load-theme 'ample t t)
;; (load-theme 'ample-flat t t)
;; (load-theme 'ample-light t t)
;; choose one to enable
(enable-theme 'ample)
;; (enable-theme 'ample-flat)
;; (enable-theme 'ample-light)

;; Or, if you use `use-package', do something like this:
;; (use-package ample-theme
;;   :init (progn (load-theme 'ample t t)
;;                (load-theme 'ample-flat t t)
;;                (load-theme 'ample-light t t)
;;                (enable-theme 'ample-flat))
;;   :defer t
;;   :ensure t)
