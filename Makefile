PYTHON=python
script=aus

test1:
	@$(PYTHON) $(script) 3205 3086 2086

test:
	@$(PYTHON) $(script) 3010 2010

help:
	@$(PYTHON) $(script) -h
