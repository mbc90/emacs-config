;; which key
(use-package which-key
  :straight t
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 0.3))
;; Ivy
(use-package ivy
  :straight t
  :custom
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
:config
  (ivy-mode)
)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
;;------------
(use-package ivy-rich
  :straight t
  :after counsel
  :init
  (ivy-rich-mode 1))
;;---------------
;;Counsel
(use-package counsel
  :straight t
  :ensure t
  :bind (("M-x" . counsel-M-x)
         ("C-x b" . counsel-ibuffer)
         ("C-x C-f" . counsel-find-file)
         :map minibuffer-local-map
         ("C-r" . 'counsel-minibuffer-history)))

;;buffer-move for better window management 
(require 'buffer-move)
;; keybindings
(use-package general
  :straight t
  :config
  (general-evil-setup)
  (general-create-definer zosmac/leader-keys
    :keymaps '(normal insert visual emacs)
    :prefix "SPC"
    :global-prefix "C-SPC")

  (zosmac/leader-keys
    ;; persp mode
    "=" '(perspective-map :which-key "Perspective")
    ;;toggles
    "t"  '(:ignore t :which-key "toggles")
    "tt" '(counsel-load-theme :which-key "Choose Theme")
    "tv" '(vterm-toggle :which-key "vterm")
    "tm" '(treemacs :which-key "treemacs")
    ;; manage windows
    "w"  '(:ignore w :which-key "Window")
    "wd" '(delete-window :which-key "Delete Window")
    "wl" '(windmove-right :which-key "Move focus right")
    "wh" '(windmove-left :which-key "Move focus left")
    "wk" '(windmove-up :which-key "Move focus up")
    "wj" '(windmove-down :which-key "Move focus down")
    "wL" '(buf-move-right :which-key "Move right")
    "wH" '(buf-move-left :which-key "Move left")
    "wK" '(buf-move-up :which-key "Move up")
    "wJ" '(buf-move-down :which-key "Move down")
    "wv" '(split-window-right :which-key "v-split")
    "ws" '(split-window-below :which-key "h-split")
    ;; find stuff
    "f" '(:ignore f :which-key "Find")
    "ff" '(find-file :which-key "Find file")
    "fs" '(swiper :which-key "Swiper")
    "fi" '(avy-goto-char-timer :which-key "Avy goto")
    ;; Buffer stuff
    "b"  '(:ignore b :which-key "Buffer")
    "bb" '(switch-to-buffer :which-key "Switch Buffer")
    "bi" '(ibuffer :which-key "ibuffer")
    "bI" '(counsel-ibuffer :which-key "counsel-ibuffer")
    "bd" '(kill-current-buffer :which-key "Delete Buffer")
    "b[" '(previous-buffer :which-key "Previous Buffer")
    "b]" '(next-buffer :which-key "Next Buffer")
    ;; org mode things
    "o" '(:ignore o :which-key "Org mode")
    "op" '(org-latex-export-to-pdf :which-key "Export to PDF")
    "or" '(:ignore r :which-key "Org Roam")
    "ort" '(org-roam-buffer-toggle :which-key "Buffer toggle")
    "orf" '(org-roam-node-find :which-key "Node Find")
    "ori" '(org-roam-node-insert :which-key "Node Insert")
    ;; reload
    "r" '(:ignore r :which-key "reload")
    "rr" '(eval-buffer :which-key "reload config")
    ;; Git stuff
    "g" '(:ignore g :which-key "Git")
    "g g" '(magit-status :which-key "Magit Status")
    ))
      



  (provide 'init-keybindings)
