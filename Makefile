BABEL_HOME=node_modules/babel-cli
BABEL_SCRIPT=$(BABEL_HOME)/bin/babel.js
JASMINE_HOME=node_modules/jasmine-es6
JASMINE_SCRIPT=$(JASMINE_HOME)/bin/jasmine.js
INSPECTOR_HOME=./node_modules/node-inspector/
INSPECTOR_SCRIPT=$(INSPECTOR_HOME)/bin/node-debug.js

default: build

node_modules:
	@npm install

build: node_modules

tests: build $(JASMINE_SCRIPT)
	$(JASMINE_SCRIPT)

tests-debug: $(JASMINE_SCRIPT) $(INSPECTOR_SCRIPT)
	$(INSPECTOR_SCRIPT) $(JASMINE_SCRIPT)

clean: node_modules
	@rm -rf node_modules
