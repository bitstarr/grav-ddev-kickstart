C_RED		= \033[0;31m
C_GREEN		= \033[0;32m
C_YELLOW	= \033[0;33m
C_CYAN		= \033[0;36m
C_NC		= \033[0m # No Color

.PHONY: init
init: is_installed grav_prepare
	@chmod +x .ddev/initialize.sh
	@.ddev/initialize.sh

is_installed:
ifneq (,$(wildcard ./index.php))
	@echo "$(C_RED)Already installed.$(C_NC)"
	@exit 1
endif
	@echo "$(C_GREEN)Here we go.$(C_NC)"

grav_prepare:
	@echo ""
	@echo "$(C_CYAN)Downloading and preparing grav CMS$(C_NC)"
	@curl -o grav.zip -SL https://getgrav.org/download/core/grav/latest
	@unzip grav.zip -d ./ > /dev/null
	@rm grav.zip
	@rm -rf grav/user/
	@rm -rf grav/.github/
	@rm grav/README.md grav/LICENSE.txt grav/CONTRIBUTING.md grav/CODE_OF_CONDUCT.md grav/CHANGELOG.md
	@mv -n grav/* ./
	@mv -n grav/.[!.]* ./
	@rm -rf grav/
	@mkdir -p user/data/flex-objects
	@./bin/grav install
