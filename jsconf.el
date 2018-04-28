;; javascript
(autoload 'js3-mode "js3" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js3-mode))

(require 'js-comint)
;; Optionally, set the `js-comint-program-command' string
;;  and the `js-comint-program-arguments' list to the executable that runs
;;  the JS interpreter and the arguments to pass to it respectively.
;;  For example, on windows you might need below setup:
;;    (setq inferior-js-program-command "C:/Program Files/nodejs/node.exe")

;; javascript
