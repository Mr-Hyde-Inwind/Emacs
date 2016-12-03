
;;color setting
(add-to-list 'load-path "~/.emacs.d/lisp/colorTheme")
(require 'color-theme)
(color-theme-initialize)
(color-theme-classic)

(setq-default indent-tabs-mode nil);;use tab as space
(setq tab-width:4)

;;org-mode setting
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))


