;base
(require 'package)
(package-initialize)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")))
(add-to-list 'load-path "/home/evgeniy/node_modules/tern/emacs/")
(autoload 'tern-mode "tern.el" nil t)

;base


;helm
(require 'helm)
(require 'helm-config)
;;bkey
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x r b") 'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
;;ekey
(helm-mode 1)
;helm

;yasnippet
(yas-global-mode 1)
;yasnippet

;ElispSnippets
(load-file ".emacs.d/snippets.elc")
(load-file ".emacs.d/snippets-dynamic.elc")  
;ElispSnippets

;lisp interaction mode
(add-hook 'lisp-interaction-mode-hook (lambda()
    (define-key lisp-interaction-mode-map (kbd "C-c d") 'mysnip-defun)
    (define-key lisp-interaction-mode-map (kbd "C-c l") 'mysnip-let)
    (define-key lisp-interaction-mode-map (kbd "C-c v") 'mysnip-lvar)
    (define-key lisp-interaction-mode-map (kbd "C-c i") 'mysnip-if)
    (define-key lisp-interaction-mode-map (kbd "C-c c") 'mysnip-cond)
    (define-key lisp-interaction-mode-map (kbd "C-c w i") 'mysnip-while)
    (define-key lisp-interaction-mode-map (kbd "C-c w e") 'mysnip-when)
    (define-key lisp-interaction-mode-map (kbd "C-c u") 'mysnip-unless)
    (define-key lisp-interaction-mode-map (kbd "C-c b") 'mysnip-block)
    (define-key lisp-interaction-mode-map (kbd "C-c m") 'mysnip-lambda)
    (define-key lisp-interaction-mode-map (kbd "C-x w") 'mysnip-util-wrap)
    (define-key lisp-interaction-mode-map (kbd "C-c r") 'mysnip-read-dynamic-snippet)
    (define-key lisp-interaction-mode-map (kbd "C-c p") 'mysnip-print-dynamic-snippet)
))
;lisp interaction mode

;emacs lisp mode
(add-hook 'emacs-lisp-mode-hook (lambda()
    (define-key emacs-lisp-mode-map (kbd "C-c d") 'mysnip-defun)
    (define-key emacs-lisp-mode-map (kbd "C-c l") 'mysnip-let)
    (define-key emacs-lisp-mode-map (kbd "C-c v") 'mysnip-lvar)
    (define-key emacs-lisp-mode-map (kbd "C-c i") 'mysnip-if)
    (define-key emacs-lisp-mode-map (kbd "C-c c") 'mysnip-cond)
    (define-key emacs-lisp-mode-map (kbd "C-c w i") 'mysnip-while)
    (define-key emacs-lisp-mode-map (kbd "C-c w e") 'mysnip-when)
    (define-key emacs-lisp-mode-map (kbd "C-c u") 'mysnip-unless)
    (define-key emacs-lisp-mode-map (kbd "C-c b") 'mysnip-block)
    (define-key emacs-lisp-mode-map (kbd "C-c m") 'mysnip-lambda)
    (define-key emacs-lisp-mode-map (kbd "C-x w") 'mysnip-util-wrap)
    (define-key emacs-lisp-mode-map (kbd "C-c r") 'mysnip-read-dynamic-snippet)
    (define-key emacs-lisp-mode-map (kbd "C-c p") 'mysnip-print-dynamic-snippet)
))
;emacs lisp mode

;html mode
(require 'sgml-mode)
(add-hook 'sgml-mode-hook (lambda()
    (define-key sgml-mode-map (kbd "C-c t v") 'mysnip-html-tag-vertical)
    (define-key sgml-mode-map (kbd "C-c t h") 'mysnip-html-tag-horizontal)
    (define-key sgml-mode-map (kbd "C-c s i") 'yas-insert-snippet)
    (define-key sgml-mode-map (kbd "C-c s e") 'yas-visit-snippet-file)
    (define-key sgml-mode-map (kbd "C-c s n") 'yas-new-snippet)    
))
;html-mode

;; js-mode
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'js2-mode-hook (lambda()
    ;; (tern-mode t)
    (define-key js-mode-map (kbd "C-c s i") 'yas-insert-snippet)
    (define-key js-mode-map (kbd "C-c s e") 'yas-visit-snippet-file)
    (define-key js-mode-map (kbd "C-c s n") 'yas-new-snippet)
    (ac-js2-mode)
))
;; js-mode

;; css-mode
(require 'css-mode)
(add-hook 'css-mode-hook (lambda()
    (define-key css-mode-map (kbd "C-c s i") 'yas-insert-snippet)
    (define-key css-mode-map (kbd "C-c s e") 'yas-visit-snippet-file)
    (define-key css-mode-map (kbd "C-c s n") 'yas-new-snippet)
    ;; (require 'tern-auto-complete)
    ;; (tern-ac-setup)
))
;; css-mode

;; php-mode
(add-hook 'php-mode-hook (lambda()
    (require 'php-mode)
    (require 'auto-complete)
			   
    (auto-complete-mode t)
    (ac-config-default)
    (setq ac-auto-start nil)
    ;; (require 'ac-php)
    ;; (setq ac-sources  '(ac-source-php ) )

    (define-key php-mode-map  (kbd "C-]") 'ac-php-find-symbol-at-point)   ;goto define
    (define-key php-mode-map  (kbd "C-t") 'ac-php-location-stack-back   ) ;go back			   
    (define-key php-mode-map (kbd "C-c s i") 'yas-insert-snippet)
    (define-key php-mode-map (kbd "C-c s e") 'yas-visit-snippet-file)
    (define-key php-mode-map (kbd "C-c s n") 'yas-new-snippet)
    (require 'ac-helm)
    (define-key php-mode-map (kbd "C-;") 'ac-complete-with-helm)    
))
;; php-mode

;; python-mode python-mode
(add-hook 'python-mode-hook (lambda()
    (require 'python)
    (require 'auto-complete)
			   
    (auto-complete-mode t)
    (ac-config-default)
    (setq ac-auto-start nil)

    (define-key python-mode-map (kbd "C-c s i") 'yas-insert-snippet)
    (define-key python-mode-map (kbd "C-c s e") 'yas-visit-snippet-file)
    (define-key python-mode-map (kbd "C-c s n") 'yas-new-snippet)
    (require 'ac-helm)
    (define-key python-mode-map (kbd "C-;") 'ac-complete-with-helm)    
))
;; python-mode


;; sql-mode
(require 'sql)
(add-hook 'sql-mode-hook (lambda()
    (define-key sql-mode-map (kbd "C-c s i") 'yas-insert-snippet)
    (define-key sql-mode-map (kbd "C-c s e") 'yas-visit-snippet-file)
    (define-key sql-mode-map (kbd "C-c s n") 'yas-new-snippet)
))
;; sql-mode





(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(initial-buffer-choice t)
 '(package-selected-packages
   (quote
    (ac-js2 js2-mode helm-gtags ac-helm ac-php-core tern-auto-complete tern json-mode helm-system-packages helm-sql-connect emacsql-psql ac-php company-php auto-complete yasnippet-snippets yasnippet helm-company helm)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "dark gray" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "PfEd" :family "DejaVu Sans Mono"))))
 '(font-lock-comment-face ((t (:foreground "green")))))
(put 'narrow-to-region 'disabled nil)
