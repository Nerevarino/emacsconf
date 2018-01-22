configs=baseconf.elc helmconf.elc hgtconf.elc hyasm.elc acconf.elc
dir=~/projects/elisp/emacsconf


emacsconf: $(configs)

baseconf.elc: baseconf.el
	emacsclient -s OS -e '(byte-compile-file "$(dir)/baseconf.el")'

helmconf.elc: helmconf.el
	emacsclient -s OS -e '(byte-compile-file "$(dir)/helmconf.el")'

hgtconf.elc: hgtconf.el
	emacsclient -s OS -e '(byte-compile-file "$(dir)/hgtconf.el")'

hyasm.elc: hyasm.el
	emacsclient -s OS -e '(byte-compile-file "$(dir)/hyasm.el")'

acconf.elc: acconf.el
	emacsclient -s OS -e '(byte-compile-file "$(dir)/acconf.el")'

apply:
	cp -r $(configs) ~/.emacs.d/

esstart:
	emacs --eval '(setq server-name "OS")' --daemon

esstop:
	emacsclient -s OS -e '(kill-emacs)'

esupdate:
	emacsclient -s OS -e '(kill-emacs)'
	emacs --eval '(setq server-name "OS")' --daemon

clean: 
	rm -rf $(configs)
