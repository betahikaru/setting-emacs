;; Emacs package system
(require 'cask "~/.emacs.d/.cask/cask.el")
(cask-initialize)

;; auto-complete
(autoload 'auto-complete-mode "auto-complete.el" "auto-complete" t)
(ac-config-default)

;; helm
(global-set-key (kbd "C-c h") 'helm-mini)

;; markdown-mode
(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.txt$" . markdown-mode))
