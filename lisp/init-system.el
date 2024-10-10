(use-package exec-path-from-shell
  :straight t)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(provide 'init-system)
