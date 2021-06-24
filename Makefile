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
	@echo "  clear          > clear cache"
	@echo ""
	@echo "  user         > create a new user"
	@echo "  theme        > create a new blank theme"
	@echo "  plugin       > create a new blank plugin"
	@echo ""
	@echo "  init         > prepare to setup a new project"
	@echo ""

.PHONY: init
init:
	chmod +x .ddev/initialize.sh
	.ddev/initialize.sh

.PHONY: install
install:
	chmod +x .ddev/install.sh
	.ddev/install.sh

.PHONY: update
update:
	mv robots.txt robots.txt.bak
	./bin/grav install
	./bin/gpm selfupgrade
	./bin/gpm update
	mv robots.txt.bak robots.txt
	git checkout readme.md
	# git -C user/plugins/directus pull

.PHONY: clear
clear:
	./bin/grav cache

.PHONY: user
user:
	./bin/plugin login newuser -s enabled

.PHONY: theme
theme:
	bin/plugin devtools new-theme

.PHONY: plugin
plugin:
	bin/plugin devtools new-plugin