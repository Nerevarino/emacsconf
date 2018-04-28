(require 'auto-complete)
(require 'auto-complete-c-headers)
(ac-config-default)
(setq ac-auto-start nil)
(require 'ac-helm) ;; Not necessary if using ELPA package
(global-set-key (kbd "C-:") 'ac-complete-with-helm)
(define-key ac-complete-mode-map (kbd "C-:") 'ac-complete-with-helm)





;ac
;; (progn
;;   (require 'auto-complete)
;;   (ac-config-default)
;;   (setq ac-use-menu-map t)
;;   (setq ac-auto-start nil)
;;   (define-key ac-mode-map (kbd "C-:") 'ac-fuzzy-complete)
;; )
;ac


;ac-php
;; (progn
;;   (add-hook 'php-mode-hook
;;     '(lambda ()
;;        (require 'ac-php)
;;        (setq ac-sources  '(ac-source-php ) )

;;        (define-key php-mode-map  (kbd "C-]") 'ac-php-find-symbol-at-point)   ;goto define
;;        (define-key php-mode-map  (kbd "C-t") 'ac-php-location-stack-back   ) ;go back
;;        ))
;; )
;ac-php
