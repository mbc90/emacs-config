(use-package auctex 
  :straight t)
(use-package cdlatex
  :straight t)
(add-hook 'org-mode-hook #'turn-on-org-cdlatex)
(provide 'init-latex)
