#!/bin/sh
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo "Initial cleanup"
# rm readme.md LICENCE
# rm -rf .git

# download grav an unpack in current folder
echo "Downloading grav CMS"
#curl -o grav-admin.zip -SL https://getgrav.org/download/core/grav-admin/latest
unzip grav-admin.zip -d ./ > /dev/null
# rm grav-admin.zip
mv -n grav-admin/* ./
mv -n grav-admin/.[!.]* ./
rm -rf grav-admin/

# install plugins from list
if [ -f kick-it/plugins.txt ]
then
    echo "Installing plugins"
    plugins=$(paste -sd ' ' < kick-it/plugins.txt)
    bin/gpm install $plugins
    rm kick-it/plugins.txt
fi


# insert configs
echo "Copying default configurations"
cp -r kick-it/* .
cp -r kick-it/.[a-zA-Z0-9]* ./

# insert ddevc config and set hostname
read -p "Hostname for ddev? [e. g. deine-mudda or projectname]: " ddevhostname
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

    git clone $themerepo user/themes/

    theme=$(basename $themerepo | grep -E -o '^([^.]+)' )
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
echo "Adding a user"
./bin/plugin login newuser

# clean up
# remove .github folder, codeofconduct, etc. from grav
# remove our own .git folder and our self (kickstart.sh)

echo "Final cleanup"
rm README.md LICENCE.txt CONTRIBUTING.md CODE_OF_CONDUCT.md CHANGELOG.md
rm -rf .github

echo "We are done here. ${CYAN}Happy coding!${NC}"