;; This will be for themeing of emacs
(require 'set-themes)
;;; Code:
(use-package doom-themes
  :straight t
  :ensure t
  :config

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-colors") ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))
;; call set theme function
(set-theme)
;; font
(set-face-attribute 'default nil :font "FiraCode Nerd Font Mono" :height (set-font-height))

(column-number-mode)
(global-display-line-numbers-mode t)
(setq display-line-numbers-type 'relative)

;; remove line numbers in vterm
(add-hook 'vterm-mode-hook(lambda() (display-line-numbers-mode -1)))

(scroll-bar-mode -1)        ; Disable visible scrollbar
(tooltip-mode -1)           ; Disable tooltips
(tool-bar-mode -1)          ; Disable the toolbar

(set-fringe-mode 10)        ; Give some breathing room

(menu-bar-mode -1)            ; Disable the menu bar

;; use-package with package.el:
(use-package dashboard
  :straight t
  :ensure t
  :config
  (dashboard-setup-startup-hook))
(setq dashboard-startup-banner "~/.emacs.d/image/ue-colorful.png")
(setq dashboard-image-banner-max-width 512)
(use-package all-the-icons
  :straight t)

(provide 'init-themes)
