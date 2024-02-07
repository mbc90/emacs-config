;; this file will keep all general themeing 
(use-package doom-themes
  :straight t
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-tokyo-night t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-colors") ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

;; font
(set-face-attribute 'default nil :font "FiraCode Nerd Font Mono" :height 100)

(column-number-mode)
(global-display-line-numbers-mode t)

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

(provide 'init-themes)
