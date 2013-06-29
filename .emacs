;; Load Files
(add-to-list 'load-path "~/.emacs.d")

;; Line Number
(column-number-mode t)
(line-number-mode t)

;; Encoding
(set-language-environment 'Japanese)
(set-default-coding-systems 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(setq-default buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)


;; Backup Files
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq backup-inhibited t)


;; Highlighting
(show-paren-mode t)
(transient-mark-mode t)


;; Other Settings
(setq inhibit-startup-message t)
(global-set-key "\C-h" 'backward-delete-char)

(setq indent-level 2)
(setq tab-width 2)


;; Python
(add-hook 'python-mode-hook
          '(lambda()
             (setq indent-tabs-mode t)
             (setq indent-level 2)
             (setq python-indent 2)
             (setq tab-width 2)))


;; CSS
(setq css-indent-offset 2)


;; JavaScript
(setq js-indent-level 2)


;; Haml
(require 'haml-mode)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))


;; Sass
(require 'sass-mode)
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))


;; Scss
(require 'scss-mode)
(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))
(add-hook 'scss-mode-hook
          '(lambda()
             (setq css-indent-offset 2)
             (setq scss-compile-at-save nil)))

;; Yaml
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
