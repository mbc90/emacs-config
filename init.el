;; Straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(straight-use-package 'use-package)
;;--------------------------
;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
;; stop emacs backup files
(setq make-backup-files nil)

;; load path for other files
(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/scripts")
;; add other files
;;evil
(require 'init-evil)
;; doom-modeline
(require 'init-modeline)
;; doom-themes
(require 'init-themes)
;; keybindings
(require 'init-keybindings)
;;org-mode
(require 'init-org)
;; make my code pretty again!
(require 'init-code)
;; navigation stuff like tabs/windows/buffers
(require 'init-navigation)
;; Different settings for diiferent os
(require 'init-system)
