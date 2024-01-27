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
(use-package lsp-mode
  :straight t
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (XXX-mode . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)
(use-package lsp-ivy
  :straight t
  :commands lsp-ivy-workspace-symbol)

(provide 'init-code)
