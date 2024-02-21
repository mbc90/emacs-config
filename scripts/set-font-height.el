;; set-font-height.el --- Summary
;;; Commentary:

;; a simple function that compares the hostname and sets the font
;; if system-name = Macbook-MC.local, return 140
;; else return 100

;;; Code:
(defun set-font-height ()
(if (string= (system-name) "Macbook-MC.local" )
  (progn 120)
  (progn 100)))


(provide 'set-font-height)
;;; set-font-height.el ends here
