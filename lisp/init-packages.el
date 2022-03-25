;;; package --- 所有使用的包配置
;;; Commentary:
;;; Code:
(use-package restart-emacs)

(use-package company
  :config
  (setq company-dabbrev-code-everywhere t
	company-dabbrev-code-modes t
	company-dabbrev-code-other-buffers 'all
	company-dabbrev-downcase nil
	company-dabbrev-ignore-case t
	company-dabbrev-other-buffers 'all
	company-require-match nil
	company-minimum-prefix-length 2
	company-show-numbers t
	company-tooltip-limit 20
	company-idle-delay 0
	company-echo-delay 0
	company-tooltip-offset-display 'scrollbar
	company-begin-commands '(self-insert-command))
  (push '(company-semantic :with company-yasnippet) company-backends)
  :hook ((after-init . global-company-mode)))

(use-package benchmark-init
  :init (benchmark-init/activate)
  :hook (after-init . benchmark-init/deactivate))

(use-package crux)

(use-package hungry-delete)

(use-package drag-stuff)

(use-package ivy
  :defer 1
  :demand
  :hook (after-init . ivy-mode)
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t
	ivy-initial-inputs-alist nil
	ivy-count-format "%d/%d "
	enable-recursive-minibuffers t
	ivy-re-builders-alist '((t . ivy--regex-ignore-order)))
  (ivy-posframe-mode 1))

(use-package ivy-posframe
  :init (setq ivy-posframe-display-functions-alist
	'((swiper . ivy-posframe-display-at-frame-center)
	  (complete-symbol . ivy-posframe-display-at-point)
	  (counsel-M-x . ivy-posframe-display-at-frame-center)
	  (counsel-find-file . ivy-posframe-display-at-frame-center)
	  (ivy-switch-buffer . ivy-posframe-display-at-frame-center)
	  (t . ivy-posframe-display-at-frame-center))))

(use-package counsel
  :after (ivy))

(use-package swiper
  :after ivy
  :config (setq swiper-action-recenter t
		swiper-include-line-number-in-search t))

(use-package flycheck
  :hook (after-init . global-flycheck-mode))

(use-package which-key
  :defer nil
  :config (which-key-mode))

(use-package ace-window)

(use-package lsp-mode)

(use-package popwin
  :hook (after-init . popwin-mode))

(provide 'init-packages)
;;; init-packages.el ends here
