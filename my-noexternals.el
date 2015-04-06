;; don't add newline
(setq require-final-newline nil)

;; Remove GTK dialog boxes
(setq use-dialog-box nil)

;; Remove scrollbars, menu bars, and toolbars
;;(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; no lockfiles
(setq create-lockfiles nil)

;; Don't want any backup files
(setq make-backup-files nil) 

;; Don't want any .saves files
(setq auto-save-list-file-name nil) 
;; Don't want any auto saving
(setq auto-save-default nil) 