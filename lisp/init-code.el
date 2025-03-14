;; Tree Sitter Stuff
(use-package tree-sitter
  :straight t)
(use-package tree-sitter-langs
  :straight t)
;; give your brackets a friend
(electric-pair-mode 1)
;; stop backup and lock files
(setq make-backup-files nil)
(setq create-lockfiles nil)
(require 'tree-sitter)
(require 'tree-sitter-langs)

(global-tree-sitter-mode)
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)
;; -----------------------------------------------
;; lang-modes
;; nix-mode to make nix pretty
(use-package nix-mode
  :straight t
  :mode "\\.nix\\'")
;; add zig-mode
(use-package zig-mode
  :straight t)
;; add rust-mode
(use-package rust-mode
  :straight t)
;; add swift mode for the swift lang
(use-package swift-mode
  :straight t)

(use-package go-mode
  :straight t)
;;-------------------------------
;; Language server stuff
(use-package lsp-mode
  :straight t
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)

	 ;; c lsp lang
         (c-mode . lsp)
         (c++-mode . lsp)
	 (zig-mode . lsp)
	 (mhtml-mode .lsp)
	 (swift-mode . lsp)
	 (go-mode . lsp)
	 (csharp-mode . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)
(use-package lsp-ivy
  :straight t
  :commands lsp-ivy-workspace-symbol)
(use-package lsp-sourcekit
  :straight t
  :after lsp-mode)
(use-package lsp-ui
  :straight t
  :after lsp-mode)
;; -----------------------------------
;; auto-complete stuff
(use-package flycheck
  :straight t
  :ensure t
  :defer t
  :diminish
  :init (global-flycheck-mode))
;; gives me pretty auto complete boxes
(use-package company
  :straight t
  :after lsp-mode
  :hook (prog-mode . company-mode)
  :bind (:map company-active-map
	      ("<tab>" . company-complete-selection))
  (:map lsp-mode-map
	      ("<tab>" . company-indent-or-complete-common)))
;; emmet for web-dev auto complete, and other stuff prob
(use-package emmet-mode
  :straight t)
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; auto start on any markup mode
(add-hook 'css-mode-hook 'emmet-mode)  ;; for css
;; direnv for nix flake enabled development environment
(use-package direnv
  :straight t
  :config
  (if (eq system-type 'gnu/linux)
      (direnv-mode)))
  
;; git stuff
(use-package magit
  :straight t)
(if (eq system-type 'darwin)
(setq with-editor-emacsclient-executable "/opt/homebrew/bin/emacsclient"))
(provide 'init-code)
