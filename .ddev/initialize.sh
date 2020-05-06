#!/bin/sh
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo "${YELLOW}Initial cleanup${NC}"
rm readme.md LICENSE

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

# insert ddevc config and set hostname
echo ""
read -p "Hostname for ddev? [e. g. project-name]: " ddevhostname
if [ -z "$ddevhostname" ]
then
    echo "${RED}Please configure ddev manually!${NC}"
else
    sed -i "s/\(^name\: \).*/\1$ddevhostname/" .ddev/config.yaml
    mv user/ddevhostname.ddev.site/ user/$ddevhostname.ddev.site
    echo "Hostname for ddev set to ${GREEN}$ddevhostname${NC}"
fi

# do we have a theme?
# check it out
echo ""
read -p "Shall we clone a theme from a repository? [yes]: " yn
if echo "$yn" | grep -iq "^y" ;then
    read -p "Whats the git URL?: " themerepo
    read -p "Divergent folder name? [hit Return to skip]: " theme
    if [ -z "$theme" ]
    then
        theme=$(basename $themerepo | grep -E -o '^([^.]+)' )
    fi

    echo "${YELLOW}Downloading Theme${NC}"

    git clone $themerepo user/themes/$theme

    sed -i "s/\(^  theme\: \).*/\1$theme/" user/config/system.yaml
    echo "Theme set to ${GREEN}$theme${NC}"
fi

# add user
echo ""
read -p "Do you want to add a user? [yes]: " yn
if echo "$yn" | grep -iq "^y" ;then
    echo "${YELLOW}Adding a user${NC}"
    ./bin/plugin login newuser -s enabled
fi

# clean up
echo ""
echo "${YELLOW}Final cleanup${NC}"
rm -rf .git
mv .ddev/readme.md .
sed -i "s/# ddevhostname.*/# $ddevhostname/g" readme.md

echo ""
echo "${YELLOW}Fresh git${NC}"
git init

echo ""
echo "We are done here. ${GREEN}Happy coding!${NC}"
echo "If you need to manage your pages in a repository, please set this up now."
echo ""