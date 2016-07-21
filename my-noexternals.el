;; don't add newline
(setq require-final-newline nil)

;; Remove GTK dialog boxes
(setq use-dialog-box nil)

;; Remove scrollbars, menu bars, and toolbars
;; (when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; no lockfiles
(setq create-lockfiles nil)

;; electric pair
;; (electric-pair-mode 1)

;; no startup msg  
(setq inhibit-startup-message t) 

;; Don't want any backup files
(setq make-backup-files nil) 

;; Don't want any .saves files
(setq auto-save-list-file-name nil) 

;; Don't want any auto saving
(setq auto-save-default nil) 

(setq-default tab-width 2)
(setq-default c-basic-offset 2)
(setq-default indent-tabs-mode nil)

(setq indent-tabs-mode nil)
(setq indent-tabs-mode t)


;; Options -> Set default font
;; (add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-9"))
;; (set-default-font "DejaVu Sans Mono-9")

;; (add-to-list 'default-frame-alist '(font . "Ubuntu Mono-10"))
;; (set-default-font "Ubuntu Mono-10")

;; (add-to-list 'default-frame-alist '(font . "Anonymous Pro-11"))
;; (set-default-font "Anonymous Pro-11")

(add-to-list 'default-frame-alist '(font . "Liberation Mono-10"))
(set-default-font "Liberation Mono-10")
(setq-default line-spacing 1)
(setq line-spacing 0.5)

;;(set-frame-parameter (selected-frame) 'alpha '(85 50))
;;(add-to-list 'default-frame-alist '(alpha 85 50))

;;(set-face-attribute 'default nil :background "black")

;; auto update file
(global-auto-revert-mode 1)

;; highlight line
(global-hl-line-mode 1)

(setq-default cursor-type 'bar) 
;; (set-cursor-color "#DD2C00") 

(require 'fringe) 
(fringe-mode '(0 . 0))

(set-face-attribute 'region nil :background "#2196F3" :foreground "#ffffff")

(show-paren-mode t)
(setq show-paren-style 'expression)
