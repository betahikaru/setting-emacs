;;; init.el --- Root Emacs Configrations
;;; Commentary:
;;; Code:

;; Emacs package system
(require 'cask "~/.emacs.d/.cask/cask.el")
(cask-initialize)

;; theme
(load-theme 'wombat t)

;; auto-complete
(ac-config-default)

;; helm
(global-set-key (kbd "C-c h") 'helm-mini)

;; helm-swoop
(global-set-key (kbd "M-i") 'helm-swoop)

;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; expand-region
(global-set-key (kbd "C-c C-@") 'er/expand-region)

;; ace-jump-mode
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;; markdown-mode
(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.txt$" . markdown-mode))
