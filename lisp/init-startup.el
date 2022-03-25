;;; package --- emacs 启动时执行
;;; Commentary:
;;; Code:
;; 最大化窗口
(add-to-list 'default-frame-alist '(fullscreen . maximized))
;; 关闭工具栏
(when *is-macos* *is-windows*
  (tool-bar-mode -1))
;; 关闭滚动条
(when *is-macos* *is-windows*
  (scroll-bar-mode -1))
;; 开启行号显示
;; (global-linum-mode 1)
(global-display-line-numbers-mode t)
(setq display-line-numbers-type 'relative)
 ;; 关闭错误时的警告音
(setq ring-bell-function 'ignore)
;; 开启全局 company 补全
;; (global-company-mode 1)
;; 选中文字后输入的第一个字符会删除选中文字
(delete-selection-mode 1)
;; 更改光标样式为竖线
(setq-default cursor-type 'bar)
;; 设置系统编码，防止乱码
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
;; 设置垃圾回收阈值，加快启动速度
(setq gc-cons-threshold most-positive-fixnum)
;; 关闭启动帮助页面
(setq inhibit-startup-screen t)
;; 设置启动画面为 start.org 文件
(setq-default initial-buffer-choice "~/Library/Mobile Documents/com~apple~CloudDocs/Notes/start.org")
;; 关闭自动生成备份文件设置
(setq make-backup-files nil)
;; 定义打开 init 文件函数
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
;; 启动时还原上一次退出前的状态
;;(desktop-save-mode 1)
;; 当选中一段文字 之后输入一个字符会替换掉你选中部分的文字
(delete-selection-mode 1)
;; 自动加载外部修改过的文件
(global-auto-revert-mode 1)

(provide 'init-startup)
;;; init-startup.el ends here
