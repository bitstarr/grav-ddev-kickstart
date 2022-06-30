#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# insert ddevc config and set hostname
echo ""
read -p "Hostname for ddev? [e. g. project-name]: " ddevhostname
if [ -z "$ddevhostname" ]
then
    echo ""
    printf "${RED}Please configure ddev manually!${NC}\n"
else
    sed -i "s/\(^name\: \).*/\1$ddevhostname/" .ddev/config.yaml
    mv user/env/ddevhostname.ddev.site/ user/env/$ddevhostname.ddev.site
    sed -i "s/# ddevhostname.*/# $ddevhostname/g" .ddev/readme.md
    echo ""
    printf "Hostname for ddev set to ${GREEN}$ddevhostname${NC}\n"
fi

# do we have a theme?
# check it out
echo ""
printf "${CYAN}Which theme to install?${NC}\n"
themes=("chassis" "quark" "custom" "none")
select theme in "${themes[@]}"; do
    case $theme in
        "chassis")
            git clone git@github.com:bitstarr/grav-theme-chassis.git user/themes/chassis/
            rm -fr git clone $themerepo user/themes/$theme/.git
            sed -i "s/\(^  theme\: \).*/\1$theme/" user/config/system.yaml
        break
            ;;
        "quark")
            git clone git@github.com:getgrav/grav-theme-quark.git user/themes/quark/
            rm -fr git clone $themerepo user/themes/$theme/.git
            sed -i "s/\(^  theme\: \).*/\1$theme/" user/config/system.yaml
        break
            ;;
        "custom")
            read -p "Whats the git URL?: " themerepo
            read -p "Folder name of the theme? [hit Return to skip]: " themename
            if [ -z "$themename" ]
            then
                themename=$(basename $themerepo | grep -E -o '^([^.]+)' )
            fi
            git clone $themerepo user/themes/$themename
            rm -fr git clone $themerepo user/themes/$themename/.git
            sed -i "s/\(^  theme\: \).*/\1$themename/" user/config/system.yaml
        break
            ;;
	"none")
        break
        ;;
        *) echo "invalid option $REPLY";;
    esac
done

# add user
echo ""
read -p "Do you want to add a user? [yes]: " yn
if echo "$yn" | grep -iq "^y" ;then
    echo ""
    printf "${CYAN}Adding a user${NC}\n"
    ./bin/plugin login new-user -s enabled
fi

# clean up
echo ""
printf "${CYAN}Final cleanup${NC}\n"
rm -rf .git
rm .ddev/initialize.sh
mv .ddev/readme.md .
mv .ddev/Makefile .

echo ""
printf "${CYAN}Fresh git${NC}\n"
git init

echo ""
printf "We are done here. ${GREEN}Happy coding!${NC}\n"
echo "If you need to manage your pages in a repository, please set this up now."
echo ""