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
	@curl -s https://api.github.com/repos/getgrav/grav/releases/latest \
	| grep "browser_download_url.*grav-v1\.7.*\.zip" \
	| cut -d : -f 2,3 \
	| tr -d \" \
	| xargs curl -L -o grav.zip
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
