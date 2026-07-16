C_RED		= \033[0;31m
C_GREEN		= \033[0;32m
C_YELLOW	= \033[0;33m
C_CYAN		= \033[0;36m
C_NC		= \033[0m # No Color

GRAV_VERSION ?= 2.*

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
	@GRAV_TAG=$$(git ls-remote --tags --refs https://github.com/getgrav/grav.git 'refs/tags/$(GRAV_VERSION)' \
		| sed 's|.*refs/tags/||' \
		| grep -E '^[0-9]+(\.[0-9]+)*$$' \
		| sort -V | tail -n1); \
	test -n "$$GRAV_TAG" || { echo "$(C_RED)No grav release matching $(GRAV_VERSION)$(C_NC)"; exit 1; }; \
	echo "Using grav $$GRAV_TAG"; \
	curl -o grav.zip -SL "https://github.com/getgrav/grav/releases/download/$$GRAV_TAG/grav-v$$GRAV_TAG.zip"
	@unzip grav.zip -d ./ > /dev/null
	@rm grav.zip
	@rm -rf grav/user/
	@rm -rf grav/.github/
	@rm grav/README.md grav/LICENSE.txt grav/CONTRIBUTING.md grav/CODE_OF_CONDUCT.md grav/CHANGELOG.md grav/.htaccess grav/robots.txt
	@mv -n grav/* ./
	@mv -n grav/.[!.]* ./
	@rm -rf grav/
	@mkdir -p user/data/flex-objects
	@./bin/grav install
