# Quickly start working with grav

This is a boilerplate for starting a new project with grav.

## Initialisation

To initialize a new project, clone the content of this repo in your desired folder and run ``make init`` from inside this folder.

````
mkdir my-project
cd my-project
git clone https://github.com/bitstarr/grav-ddev-kickstart.git .
make init
````

### What it does

* Download and extract the latest grav
* Remove unneccesary stuff from the download
* Move the downloaded grav to root directory, so its also your webroot
* Install Plugins and themes defined in ``user/.dependencies``
* Upgrade grav and its plugins and themes, just to be sure
* Ask for a hostname to use with ddev and provide domain specific configurations
* Ask for a theme repository. If given, it will clone it and change the appropriate grav setting
* Ask to add a new user
* Removing the .git folder of the kickstart, fresh git init, provide an inital readme

## Project Installation

So you started a new project, customized some config settings, added content, developed a theme and pushed it all in a git repository. All based on this boilerplate - nice move!

This means in your repo are ``user`` and ``.ddev`` folder as well as readme, Makefile and other stuff.

A new team member wil join the project and clones this your repo. To get up and running use ``make install``. After that you can spin up ``ddev``

### What it does

* Download and extract the latest grav
* Remove unneccesary stuff from the download
* Move the downloaded grav to root directory, so its also your webroot
* Install Plugins and themes defined in ``user/.dependencies``
* Upgrade grav and its plugins and themes, just to be sure
* Ask to add a new user