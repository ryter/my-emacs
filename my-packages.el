;; defining the list of packages I want
;; this is a change.
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(defvar alex-packages
  '(
    ace-jump-mode
    afternoon-theme
    firecode-theme
    lush-theme
    auto-complete
    color-theme
    moe-theme
    emmet-mode
    elpy
    ergoemacs-mode
    dired+
    fiplr
    flx
    flx-ido
    flycheck
    powerline
    flymake-cursor
    golden-ratio
    helm
    highlight-indentation
    hlinum
    ido-vertical-mode
    js2-mode
    scss-mode
    magit
    multiple-cursors
    popwin
    projectile
    rainbow-mode
    visual-regexp
    web-mode
    web-beautify
    handlebars-mode
    php-mode
    yaml-mode
    yasnippet
    markdown-mode
    undo-tree
    indent-guide
   ) "A list of packages to ensure are installed at launch.")

;; http://stackoverflow.com/questions/10092322/how-to-automatically-install-emacs-packages-by-specifying-a-list-of-package-name
(setq url-http-attempt-keepalives nil)

(defun packages-installed-p ()
  (loop for p in alex-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p alex-packages)
    (when (not (package-installed-p p))
      (package-install p))))
