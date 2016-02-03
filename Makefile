BABEL_HOME=node_modules/babel-cli
BABEL_SCRIPT=$(BABEL_HOME)/bin/babel.js
JASMINE_HOME=node_modules/jasmine
JASMINE_SCRIPT=$(JASMINE_HOME)/bin/jasmine.js

default: build

node_modules:
	@npm install

build: node_modules

tests: $(JASMINE_SCRIPT)
	$(JASMINE_SCRIPT)

clean: node_modules
	@rm -rf node_modules
