;; (load-theme 'zenburn t)

;; If you want to use powerline, (require 'powerline) must be
;; before (require 'moe-theme).
;; (add-to-list 'load-path "~/.emacs.d/PATH/TO/powerline/")
(require 'powerline)

;; Moe-theme
;; (add-to-list 'custom-theme-load-path "~/.emacs.d/PATH/TO/moe-theme/")
;; (add-to-list 'load-path "~/.emacs.d/PATH/TO/moe-theme/")
(require 'moe-theme)

;; Show highlighted buffer-id as decoration. (Default: nil)
(setq moe-theme-highlight-buffer-id t)

;; Resize titles (optional).
;; (setq moe-theme-resize-markdown-title '(1.5 1.4 1.3 1.2 1.0 1.0))
;; (setq moe-theme-resize-org-title '(1.5 1.4 1.3 1.2 1.1 1.0 1.0 1.0 1.0))
;; (setq moe-theme-resize-rst-title '(1.5 1.4 1.3 1.2 1.1 1.0))

;; Choose a color for mode-line.(Default: blue)
(moe-theme-set-color 'cyan)

;; Finally, apply moe-theme now.
;; Choose what you like, (moe-light) or (moe-dark)
(moe-dark)

;; (add-to-list 'custom-theme-load-path "~/.emacs.d/PATH/TO/moe-theme/")

;; (load-theme 'moe-dark t)
;;or
(load-theme 'moe-light t)

;; Resize titles
(setq moe-theme-resize-markdown-title '(2.0 1.7 1.5 1.3 1.0 1.0))
(setq moe-theme-resize-org-title '(2.2 1.8 1.6 1.4 1.2 1.0 1.0 1.0 1.0))
(setq moe-theme-resize-rst-title '(2.0 1.7 1.5 1.3 1.1 1.0))


(moe-theme-set-color 'green)
;; (Available colors: blue, orange, green ,magenta, yellow, purple, red, cyan, w/b.)

(powerline-moe-theme)
(setq moe-light-pure-white-background-in-terminal t)
;; (require 'moe-theme-switcher)
;; (setq calendar-latitude +25)
;; (setq calendar-longitude +121)
(show-paren-mode t)
(setq show-paren-style 'expression)
