;; enable org table of contents 
(use-package toc-org
  :straight t
  :commands toc-org-enable
  :init (add-hook 'org-mode-hook 'toc-org-enable))
;; todo highlighting
(use-package hl-todo :straight t)
(setq global-hl-todo-mode t)
;; add bullets instead of asteriks 
(use-package org-bullets :straight t)
(add-hook 'org-mode-hook 'org-indent-mode)

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;;org-tempo makes it faster to input source blocks
(require 'org-tempo)

(provide 'init-org)
