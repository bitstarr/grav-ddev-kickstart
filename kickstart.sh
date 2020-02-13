#!/bin/sh
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo "Initial cleanup"
rm readme.md LICENSE

# download grav an unpack in current folder
echo "${YELLOW}Downloading grav CMS${NC}"
curl -o grav-admin.zip -SL https://getgrav.org/download/core/grav-admin/latest
unzip grav-admin.zip -d ./ > /dev/null
rm grav-admin.zip
mv -n grav-admin/* ./
mv -n grav-admin/.[!.]* ./
rm -rf grav-admin/

# install plugins from list
if [ -f kick-it/plugins.txt ]
then
    echo "${YELLOW}Installing plugins${NC}"
    plugins=$(paste -sd ' ' < kick-it/plugins.txt)
    bin/gpm install $plugins
    rm kick-it/plugins.txt
fi

# insert configs
echo "${YELLOW}Installing Updates${NC}"
./bin/gpm selfupgrade
./bin/gpm update

# insert configs
echo "${YELLOW}Copying default configurations${NC}"
cp -r kick-it/* .
cp -r kick-it/.[a-zA-Z0-9]* ./

# insert ddevc config and set hostname
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
read -p "Is there a repository for a theme already? [yes]: " yn
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

# do we have a repo for pages? configure sync plugin
# remove /user/pages and checkout repo here around
# read -p "Is there a repository for a the page contents? [yes]: " yn
# if echo "$yn" | grep -iq "^y" ;then
#     read -p "Whats the git URL?: " contentrepo
# fi
# TODO - you will have to setup the sync plugin by hand for now

# add user
echo "${YELLOW}Adding a user${NC}"
./bin/plugin login newuser -s enabled

# clean up
echo "${YELLOW}Final cleanup${NC}"
rm README.md LICENSE.txt CONTRIBUTING.md CODE_OF_CONDUCT.md CHANGELOG.md kickstart.sh
rm -rf .git .github kick-it

echo "We are done here. ${CYAN}Happy coding!${NC}"