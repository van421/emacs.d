;;; package --- 定义全局常量
;;; Commentary:
;;; Code:
(defconst *is-macos* (eq system-type 'darwin))
(defconst *is-linux* (eq system-type 'gun/linux))
(defconst *is-windows* (or (eq system-type 'ms-dos) (eq system-type 'windows-nt)))

(provide 'init-const)
;;; init-const.el ends here
