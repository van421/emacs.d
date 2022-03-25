;;; package --- emacs org 相关配置
;;; Commentary:
;;; Code:

;; 自动换行
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
;; 文本内语法高亮
(require 'org)
(setq org-src-fontify-natively t)

(provide 'init-org)
;;; init-org.el ends here
