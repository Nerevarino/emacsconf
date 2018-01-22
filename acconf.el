(require 'auto-complete)
(require 'auto-complete-c-headers)
(ac-config-default)
(setq ac-auto-start nil)
(require 'ac-helm) ;; Not necessary if using ELPA package
(global-set-key (kbd "C-c C-c") 'ac-complete-with-helm)
(define-key ac-complete-mode-map (kbd "C-c C-c") 'ac-complete-with-helm)
