;;; package --- 设置 elpa 源
;;; Commentary:
;;; Code:

;; (setq package-archives '(("melpa" . "http://elpa.emacs-china.org/melpa/")
;; 			 ("gnu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
;; 			 ("org" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))

;; (setq package-archives '(("gnu"   . "https://elpa.emacs-china.org/gnu/")
;;                          ("melpa" . "https://elpa.emacs-china.org/melpa/")
;; 			 ("org") . "https://elpa.emacs-china.org/org/"))

(require 'package)

(unless (bound-and-true-p package--initialized)
  (package-initialize))
(unless package-archive-contents
  (package-refresh-contents))
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(setq use-package-always-ensure t
      use-package-always-defer t
      use-package-always-demand nil
      use-package-always-minimally t
      use-package-always-verbose t)

(require 'use-package)

(provide 'init-elpa)
;;; init-elpa.el ends here
