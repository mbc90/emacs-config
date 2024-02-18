(use-package evil  
  :straight t
  :init
  (setq evil-want-keybinding nil
  evil-undo-system 'undo-redo)
  :config
  (require 'evil)
  (evil-mode 1))

;; Enable Evil
;; evil collection
(use-package evil-collection
  :straight t
  :after evil
  :ensure t
  :config
  (evil-collection-init))

;; NEEDED DO NOT FORGET
;; Emacs needs this to load elsewhere
(provide 'init-evil)
