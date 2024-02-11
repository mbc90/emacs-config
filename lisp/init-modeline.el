(use-package doom-modeline
  :straight t
  :ensure t
  :init (doom-modeline-mode 1)
  :config
  (setq doom-modeline-height 30
	doom-modeline-bar-width 5
	doom-modeline-persp-name t
	doom-modeline-persp-icon t))
 

(provide 'init-modeline)
