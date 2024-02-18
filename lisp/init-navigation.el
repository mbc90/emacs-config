;;(use-package centaur-tab;;  :straight t
;;  :demand
;;  :config
;;  (setq centaur-tabs-style "slant")
;;  (setq centaur-tabs-set-icons t)
;;  (centaur-tabs-mode t)
;;  :bind
;;  ("C-<prior>" . centaur-tabs-backward)
;;  ("C-<next>" . centaur-tabs-forward))
(use-package persp-mode
  :straight t)
(use-package vterm
  :straight t)
(use-package vterm-toggle
  :straight t
  :after vterm
  :config
  (setq vterm-toggle-fullscreen-p nil)
  (add-to-list 'display-buffer-alist
	       '((lambda (buffer-or-name _)
                   (let ((buffer (get-buffer buffer-or-name)))
                     (with-current-buffer buffer
                       (or (equal major-mode 'vterm-mode)
                           (string-prefix-p vterm-buffer-name (buffer-name buffer))))))
                (display-buffer-reuse-window display-buffer-at-bottom)
                ;;(display-buffer-reuse-window display-buffer-in-direction)
                ;;display-buffer-in-direction/direction/dedicated is added in emacs27
                ;;(direction . bottom)
                ;;(dedicated . t) ;dedicated is supported in emacs27
                (reusable-frames . visible)
                (window-height . 0.3)))
)
(provide 'init-navigation)
