;;; package --- 引入各模块配置文件
;;; Commentary:
;;; Code:
(add-to-list 'load-path
  (expand-file-name (concat user-emacs-directory "lisp")))
(add-to-list 'load-path "~/.emacs.d/site-lisp/emacs-application-framework/")

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'init-const)
(require 'init-startup)
(require 'init-elpa)
(require 'init-ui)
(require 'init-packages)
(require 'init-kbd)
(require 'init-org)
(require 'eaf)

(when (file-exists-p custom-file)
  (load-file custom-file))
;;; init.el ends here
