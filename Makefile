PYTHON=python
script=aus

programdir=$(shell basename $(CURDIR))
stowdir=/usr/local/stow
installdir=$(stowdir)/$(programdir)
bindir=/usr/local/bin

test1:
	@$(PYTHON) $(script) 3205 3086 2086

test:
	@$(PYTHON) $(script) 3010 2010

help:
	@$(PYTHON) $(script) -h

install:
	install -d $(installdir)
	install -m a+r README.md $(installdir)
	install aus $(installdir)
	stow --ignore=README.md --target=$(bindir) --dir=$(stowdir) $(programdir)

uninstall:
	stow --delete --target=$(bindir) --dir=$(stowdir) $(programdir)
