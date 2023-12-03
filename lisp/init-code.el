(use-package tree-sitter
  :straight t)
(use-package tree-sitter-langs
  :straight t)

(require 'tree-sitter)
(require 'tree-sitter-langs)

(global-tree-sitter-mode)
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)

(use-package flycheck
  :straight t
  :ensure t
  :defer t
  :diminish
  :init (global-flycheck-mode))

(provide 'init-code)
