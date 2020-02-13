# Quickly start working with grav

This little helper assumes the following:

* You don't want to store the whole grav core in your version control
* You have a repository containing your theme
* You are going to use git-sync plugin with a separate repository

# Usage

Clone the content of this repo in your desired folder and run the script from inside.

````
mkdir my-project
cd my-project
git clone https://github.com/bitstarr/grav-ddev-kickstart.git .
./kickstart.sh
````

# What It Does

* Download and extract the latest grav including the admin plugin
* Install Plugins defined in ``kick-it/plugins.txt``
* Copying Configurations from ``kick-it``
* Ask for a theme repository. If given, it will clone it and change the appropriate grav setting
* Adds a user
* cleans up (including removing all files of this repository)

