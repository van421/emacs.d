;;; package --- 设置全局快捷键
;;; Commentary:
;;; Code:

;;(when *is-macos*
  ;;(setq mac-command-modifier 'meta)
;;(setq mac-option-modifier 'super))

(when *is-windows*
  (setq w32-pass-lwindow-to-system nil)  ; 左windows键
      (setq w32-lwindow-modifier 'super)

      (setq w32-pass-rwindow-to-system nil) ; 右windows键
      (setq w32-rwindow-modifier 'super)
      (w32-register-hot-key [s-]))
      
;; 设置 mac 下 cmd 键为 option 键
;;(when *is-macos*
;;  (setq mac-command-modifier 'meta)
;;  (setq mac-option-modifier 'none))

(global-set-key (kbd "<f2>") 'open-init-file)
;; 用 y/n 代替 yes/no
(defalias 'yes-or-no-p 'y-or-n-p)
;;; crux 包的功能快捷键设置
;; 回到第一个所在行第一个非空字符前面
(global-set-key (kbd "C-a") 'crux-move-beginning-of-line)
;; 打开 init 文件
(global-set-key (kbd "C-x ,") 'crux-find-user-init-file)
;; 删除光标所在行
(global-set-key (kbd "C-s-k") 'crux-smart-kill-line)
;; 复制粘贴所在行或标记的区域
(global-set-key (kbd "C-s-c") 'crux-duplicate-current-line-or-region)

;;; hungry-delete 包的功能快捷键设置
(global-set-key (kbd "C-c b") 'hungry-delete-backward)
(global-set-key (kbd "C-c f") 'hungry-delete-forward)

;;; drag-stuff 包的功能快捷键设置
;; 上下移动当前行或选中的区域
(global-set-key (kbd "M-<up>") 'drag-stuff-up)
(global-set-key (kbd "M-<down>") 'drag-stuff-down)

;;; counsel 包的功能快捷键设置
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-c r") 'counsel-recentf)
(global-set-key (kbd "C-c g") 'counsel-git)

;;; swiper 包的功能快捷键设置
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-r") 'swiper-isearch-backward)

;;; ace-window 包的功能快捷键设置
(global-set-key (kbd "M-o") 'ace-window)

;;; 设置 org-agenda 打开快捷键
(global-set-key (kbd "C-c a") 'org-agenda)

(provide 'init-kbd)
;;; init-kbd.el ends here
