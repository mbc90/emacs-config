;; enable org table of contents 
(use-package toc-org
  :straight t
  :commands toc-org-enable
  :init (add-hook 'org-mode-hook 'toc-org-enable))

;; add bullets instead of asteriks 
(add-hook 'org-mode-hook 'org-indent-mode)
(use-package org-bullets :straight t)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(provide 'init-org)
