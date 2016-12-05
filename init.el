;;;;------------------------------load-path------------------------------

(add-to-list 'load-path "~/.emacs.d/lisp/colorTheme")
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/packages")
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-20161029.643")
;;;------------------------------插件安装源Melpa------------------------

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

;;;;------------------------------界面优化------------------------------

;;;显示行号
(global-linum-mode t)


;;;color setting
(require 'color-theme)
(color-theme-initialize)
(color-theme-calm-forest)

(setq-default indent-tabs-mode nil);;use tab as space
(setq tab-width:4)

;;;org-mode setting
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

;;;关闭gnus启动画面
(setq gnus-inhibit-startup-message t)

;;;防止页面滚动
(setq scroll-step 1 scroll-margin 3 scroll-conservatively 10000)

;;;-------------------------绑定键设置----------------------------------

;;把C-j绑定到到达指定行上
(global-set-key (kbd "C-j") 'goto-line)

;;改变Emacs回答yes行为,按y或者空格表示yes,n表示no
(fset 'yes-or-no-p 'y-or-n-p)

;;启动shell
(global-set-key (kbd "C-c s") 'shell)

;;winner-mode
(setq winner-dont-bind-my-keys t)
(winner-mode t)
(global-set-key (kbd "C-x 4 u") 'winner-undo)
(global-set-key (kbd "C-x 4 r") 'winner-redo)


;;;;-------------------------插件----------------------------------------

;;;window-numbering 窗口快速切换 M-number
(require 'window-numbering)
(window-numbering-mode 1)

;;;Smex
;;auto-start smex
(require 'smex)
(smex-initialize)
(smex-auto-update)
;;Smex绑定按键
(global-set-key (kbd "M-x") 'smex)
;;;(global-set-key (kbd "M-x") 'smex-major-mode-commands)
;;旧M-x的绑定
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;;Auto-Complete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20161029.643/dict")
(ac-config-default)

