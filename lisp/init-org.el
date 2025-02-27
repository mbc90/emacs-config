;; enable org table of contents 
(use-package toc-org
  :straight t
  :commands toc-org-enable
  :init (add-hook 'org-mode-hook 'toc-org-enable))
;; org-roam
(use-package org-roam
  :straight t
  :ensure t
  :init
  (setq org-roam-v2-ack t)
  :custom
  (org-roam-directory "~/org-roam/")
  (org-roam-setup))
(org-roam-db-autosync-mode)
(use-package emacsql :straight t)
;; todo highlighting
(use-package hl-todo :straight t)
(setq global-hl-todo-mode t)
;; add bullets instead of asteriks 
(use-package org-bullets :straight t)
(add-hook 'org-mode-hook 'org-indent-mode)

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
;; org babel stuff
(org-babel-do-load-languages
 'org-babel-load-languages
 '((ditaa . t) (shell . t) (R . y)))
(setq org-ditaa-jar-path "~/.emacs.d/links/ditaa.jar")

;;org-tempo makes it faster to input source blocks
(require 'org-tempo)

(provide 'init-org)
