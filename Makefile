PHP_BIN             := php
COMPOSER_BIN        := composer
NPM_BIN				:= npm

.PHONY: list
list:
	@echo ""
	@echo "Useful targets:"
	@echo ""
	@echo "  install      > install everything to run the project"
	@echo "  update       > update grav and plugins to latest stable version"
	@echo "  user         > create a new user"
	@echo ""
	@echo "  init         > prepare to setup a new project"
	@echo ""

.PHONY: install
install:
	.ddev/install.sh

.PHONY: init
init:
	.ddev/initialize.sh

.PHONY: update
update:
	./bin/gpm selfupgrade
	./bin/gpm update

.PHONY: user
user:
	./bin/plugin login newuser -s enabled