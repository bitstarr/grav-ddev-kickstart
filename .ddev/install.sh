#!/bin/sh
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# check if it was installed already
if [ -f index.php ]
then
    echo ""
    echo "    ${RED}Whoops. Already installed.${NC}"
    echo ""
    exit
fi

# download grav
echo ""
echo "${YELLOW}Downloading grav CMS${NC}"
curl -o grav.zip -SL https://getgrav.org/download/core/grav/latest
unzip grav.zip -d ./ > /dev/null

echo ""
echo "${YELLOW}Preparing grav folders${NC}"
rm grav.zip
rm -rf grav/user/
rm -rf grav/.github/
rm grav/README.md grav/LICENSE.txt grav/CONTRIBUTING.md grav/CODE_OF_CONDUCT.md grav/CHANGELOG.md

echo ""
echo "${YELLOW}Setting grav in place${NC}"
mv -n grav/* ./
mv -n grav/.[!.]* ./
rm -rf grav/

# install plugins from .dependencies
echo ""
echo "${YELLOW}Installing plugins${NC}"
./bin/grav install

# update grav
echo ""
echo "${YELLOW}Installing Updates${NC}"
./bin/gpm selfupgrade
./bin/gpm update

# add user
echo ""
read -p "Do you want to add a user? [yes]: " yn
if echo "$yn" | grep -iq "^y" ;then
    echo "${YELLOW}Adding a user${NC}"
    ./bin/plugin login newuser -s enabled
fi

echo ""
echo "We are done here. ${GREEN}Happy coding!${NC}"
echo ""