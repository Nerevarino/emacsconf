(add-hook 'php-mode-hook
         '(lambda ()
            (require 'company-php)
            (company-mode t)
            (add-to-list 'company-backends 'company-ac-php-backend )))


;   ------------------------последний раз использовалось то, что ниже------------------------------

;company
(global-company-mode t)
(setq company-idle-delay nil)
;(setq company-minimum-prefix-length 1)
;; (autoload 'helm-company "helm-company") 
(eval-after-load 'company
  '(progn
     (define-key company-mode-map (kbd "C-:") 'company-complete)
     (define-key company-active-map (kbd "C-:") 'company-complete)))

(add-hook 'php-mode-hook
         '(lambda ()
            (require 'company-php)
            ;(company-mode t)
            (add-to-list 'company-backends 'company-ac-php-backend )))

;company
