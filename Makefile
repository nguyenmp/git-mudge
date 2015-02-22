#! /usr/bin/make -f
SHELL=/bin/sh

DESTDIR?=/usr/local
prefix?=${DESTDIR}

# files that need mode 755
EXEC_FILES=git-mudge

all:
	@echo "Usage:\n\tsudo make install\n\tsudo make uninstall"

install:
	install -d -m 0755 $(prefix)/bin
	install -m 0755 $(EXEC_FILES) $(prefix)/bin

uninstall:
	test -d $(prefix)/bin && cd $(prefix)/bin && rm -f $(EXEC_FILES)
