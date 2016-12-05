;;显示行号
(global-linum-mode t)


;;color setting
(add-to-list 'load-path "~/.emacs.d/lisp/colorTheme")
(require 'color-theme)
(color-theme-initialize)
(color-theme-calm-forest)

(setq-default indent-tabs-mode nil);;use tab as space
(setq tab-width:4)

;;org-mode setting
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

;;关闭gnus启动画面
(setq gnus-inhibit-startup-message t)

;;;-------------------------绑定键设置----------------------------------

;;把C-j绑定到到达指定行上
(global-set-key (kbd "C-j") 'goto-line)

;;改变Emacs回答yes行为,按y或者空格表示yes,n表示no
(fset 'yes-or-no-p 'y-or-n-p)

