;; set-font-height.el --- Summary
;;; Commentary:

;; a simple function that compares the hostname and sets the font
;; if system-name = Macbook-MC.local, return 120
;; else return 95

;;; Code:
(defun set-font-height ()
  "Check hostname and return a value."
(if (string= (system-name) "Macbook-MC.local")
  (progn 120)
  (progn 95)))


(provide 'set-font-height)
;;; set-font-height.el ends here
