DIRENV = direnv
RACKET = racket

.PHONY: all
all:
	test ! \( -d .racket/bin \)
	$(RACKET) -A .racket -l- raco setup --avoid-main
	.racket/bin/raco pkg install --name sicp-libraries --auto --link -u libraries
	$(DIRENV) allow

.PHONY: clean
clean:
	-rm -rfv .racket/{bin/,[[:digit:]]*.[[:digit:]]*/} libraries/compiled/
