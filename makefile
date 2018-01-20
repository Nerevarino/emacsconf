configs=baseconf.elc helmconf.elc
dir=~/projects/elisp/emacsconf


emacsconf: $(configs)

baseconf.elc: baseconf.el
	emacsclient --socket-name=OS -e '(byte-compile-file "$(dir)/baseconf.el")'

helmconf.elc: helmconf.el
	emacsclient --socket-name=OS -e '(byte-compile-file "$(dir)/helmconf.el")'

apply:
	cp -r $(configs) ~/.emacs.d/

clean: 
	rm -rf $(configs)
