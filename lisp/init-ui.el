;;; package --- emacs UI 相关配置
;;; Commentary:
;;; Code:

(use-package gruvbox-theme
  :init (load-theme 'gruvbox-dark-soft t))

(use-package smart-mode-line
  :init
  (setq sml/no-confirm-load-theme t
	sml/theme 'respectful)
  (sml/setup))
;; 直接执行 set-face-attribute 和 set-frame-font 会不生效，在完成初始化后再执行才生效
;; set-face-attribute 可以效果比 set-frame-font 好一些，交互的 mini-buffer 也能生效
;; set-default-font 是 set-frame-font 的别名，emacs 27 之后就删除了，所以目前版本中使用 set-default-font 会报错
(add-hook 'after-init-hook
	  #'(lambda()
	      (set-face-attribute 'default nil :font "-*-Source Code Pro-normal-normal-normal-*-18-*-*-*-m-0-iso10646-1")))
	      ;; (set-frame-font "-*-Source Code Pro-normal-normal-normal-*-18-*-*-*-m-0-iso10646-1" t)))

(provide 'init-ui)
;;; init-ui.el ends here
