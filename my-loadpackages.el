;; Setup ELPA package sources
(require 'cl)

;; loading package list from another directory
(load "~/.emacs.d/my-packages.el")
;; flycheck-mode
;;(require 'flycheck)
;;(global-flycheck-mode)
;;(load "~/.emacs.d/my-flycheck.el")

;; highlight-indentation
(add-hook 'python-mode-hook 'highlight-indentation-mode)

;; yaml-mode
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))

;; autocomplete
(require 'auto-complete)
(ac-config-default)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")

;; yasnippet
(require 'yasnippet)
(yas-global-mode 1)
(yas-load-directory "~/.emacs.d/snippets")
(add-hook 'term-mode-hook (lambda()
                            (setq yas-dont-activate t)))
;; add snippets to autocomplete.el
;; (setq ac-sources '(ac-source-semantic ac-source-yasnippet))

;; js2-mode
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; visual-regexp
(require 'visual-regexp)
(define-key global-map (kbd "C-c r") 'vr/replace)
(define-key global-map (kbd "C-c q") 'vr/query-replace)

;; magit keybinding
(require 'magit)
(setq magit-last-seen-setup-instructions "1.4.0")
(define-key global-map (kbd "C-c g s") 'magit-status)
(define-key global-map (kbd "C-c g p") 'magit-pull)
(define-key global-map (kbd "C-c g b") 'magit-blame-mode)
(define-key global-map (kbd "C-c g l") 'magit-log)
(define-key global-map (kbd "C-c g c") 'magit-checkout)

;; multiple cursors
(require 'multiple-cursors)
(define-key global-map (kbd "C-c n") 'mc/mark-all-like-this)
(define-key global-map (kbd "M-n") 'mc/mark-next-lines)
(define-key global-map (kbd "C->") 'mc/mark-next-like-this)

;; ace-jump-mode
(require 'ace-jump-mode)
(define-key global-map (kbd "C-c a") 'ace-jump-mode)

(require 'ido-vertical-mode)
(ido-vertical-mode)

(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-use-faces nil)

;; web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\'" . web-mode))
(setq web-mode-enable-current-element-highlight t)
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(setq web-mode-style-padding 1)

(custom-set-faces
 '(web-mode-current-element-highlight-face
   ((t (:foreground "#E65100"))))
 )


;; emmet-mode
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'web-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(setq emmet-move-cursor-between-quotes t) ;; default nil


(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(defun scss-custom ()
  "scss-mode-hook"
  (and
   (set (make-local-variable 'css-indent-offset) 2)
   (set (make-local-variable 'scss-compile-at-save) nil)
   )
  )
(add-hook 'scss-mode-hook
          '(lambda() (scss-custom)))

;; fiplr
(require 'fiplr)
(global-set-key (kbd "C-x C-g") 'fiplr-find-file)

;; popwin
(require 'popwin)
(popwin-mode 1)

(defcustom helm-for-files-preferred-list
  '(helm-source-buffers-list
    helm-source-recentf
    helm-source-bookmarks
    helm-source-file-cache
    helm-source-files-in-current-dir
    helm-source-locate)
  "Your preferred sources to find files."
  :type '(repeat (choice symbol))
  :group 'helm-files)

(defun helm-alex-files ()
  "Custom helm find file search"
  (interactive)
  (let ((helm-ff-transformer-show-only-basename nil))
    (helm-other-buffer helm-tsutsumi-files-preferred-list "*Helm Alex Files")))

(define-key global-map (kbd "C-c C-f") 'helm-for-files)

;; (setq display-buffer-function 'popwin:display-buffer)
(push '("*helm M-x*" :height 20) popwin:special-display-config)
(push '("*helm mini*" :height 20) popwin:special-display-config)
(push '("*Helm Find Files*" :height 20) popwin:special-display-config)

;; built-in
(require 'bs)
(setq bs-configurations
      '(("files" "^\\*scratch\\*" nil nil bs-visits-non-file bs-sort-buffer-interns-are-last)))

(global-set-key (kbd "<f2>") 'bs-show)

;; (require 'linum+)
;; (setq linum-format " %d ")
;; (global-linum-mode 1)

;; (require 'hlinum)
;; (hlinum-activate)
(global-linum-mode 1)
;; (setq linum-format " %d ")
(setq linum-format "%4d \u2502")
;; project 

(add-to-list 'load-path "~/emacs.d/")
(require 'projectile)
(projectile-global-mode)
(setq projectile-indexing-method 'native)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'default)

;; (define-key projectile-mode-map [?\s-d] 'projectile-find-dir)
;; (define-key projectile-mode-map [?\s-p] 'projectile-switch-project)
;; (define-key projectile-mode-map [?\s-f] 'projectile-find-file)
;; (define-key projectile-mode-map [?\s-g] 'projectile-grep)

(require 'powerline)
(powerline-default-theme)

(setq ergoemacs-theme nil)
(setq ergoemacs-keyboard-layout "us")
(require 'ergoemacs-mode)
(ergoemacs-mode 1)

(eval-after-load 'js2-mode
  '(define-key js2-mode-map (kbd "C-c b") 'web-beautify-js))
;; Or if you're using 'js-mode' (a.k.a 'javascript-mode')
(eval-after-load 'js
  '(define-key js-mode-map (kbd "C-c b") 'web-beautify-js))

(eval-after-load 'json-mode
  '(define-key json-mode-map (kbd "C-c b") 'web-beautify-js))

(eval-after-load 'sgml-mode
  '(define-key html-mode-map (kbd "C-c b") 'web-beautify-html))

(eval-after-load 'css-mode
  '(define-key css-mode-map (kbd "C-c b") 'web-beautify-css))

(eval-after-load 'js2-mode
  '(add-hook 'js2-mode-hook
             (lambda ()
               (add-hook 'before-save-hook 'web-beautify-js-buffer t t))))

;; Or if you're using 'js-mode' (a.k.a 'javascript-mode')
(eval-after-load 'js
  '(add-hook 'js-mode-hook
             (lambda ()
               (add-hook 'before-save-hook 'web-beautify-js-buffer t t))))

(eval-after-load 'json-mode
  '(add-hook 'json-mode-hook
             (lambda ()
               (add-hook 'before-save-hook 'web-beautify-js-buffer t t))))

(eval-after-load 'sgml-mode
  '(add-hook 'html-mode-hook
             (lambda ()
               (add-hook 'before-save-hook 'web-beautify-html-buffer t t))))

(eval-after-load 'css-mode
  '(add-hook 'css-mode-hook
             (lambda ()
               (add-hook 'before-save-hook 'web-beautify-css-buffer t t))))
