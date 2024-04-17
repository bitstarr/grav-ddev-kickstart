# Quickly start working with grav

This is a boilerplate for starting a new project with grav and run it locally with [ddev](https://github.com/drud/ddev) for development.

## Befor you start

Please update `user/.dependencies` with plugins and themes you need for your project. If you add a theme there, also set the theme config in `user/config/system.yaml` and select "none" when asked for a theme in the init process.

## Initialisation

To initialize a new project, clone the content of this repo in your desired folder and run ``make init`` from inside this folder.

````
mkdir my-project
cd my-project
git clone https://github.com/bitstarr/grav-ddev-kickstart.git .
make init
````

### What `init` does

* Download and extract the latest grav
* Remove unneccesary stuff from the download
* Move the downloaded grav to root directory, so its also your webroot
* Install Plugins and themes defined in `user/.dependencies`
* Upgrade grav and its plugins and themes, just to be sure
* Ask for a hostname to use with ddev and provide domain specific configurations
* Choose a theme to install (incl. an option to provide your own or none at all) and update the configuration
* Ask to add a new user
* Removing the .git folder of the kickstart, fresh git init, provide an inital readme

## Project installation

So you started a new project, customized some config settings, added content, developed a theme and pushed it all in a git repository. All based on this boilerplate - nice move!

This means in your repo are `user` and `.ddev` folder as well as readme, Makefile and other stuff.

A new team member will join the project and clones this your repo. To get up and running use `make install`. After that you can spin up `ddev`.

### What `install` does

* Download and extract the latest grav
* Remove unneccesary stuff from the download
* Move the downloaded grav to root directory, so its also your webroot
* Install Plugins and themes defined in `user/.dependencies`
* Upgrade grav and its plugins and themes, just to be sure
* Ask to add a new user

## Requirements

* A Unix like shell
* PHP ClI
* git
* ddev (optional)

## AI Blocking

I decided to block AI bots from crawling my precious content. There are sections in `.htaccess` and in the `robots.md` (in pages).

## robots.txt

I use a pattern to manage robots.txt content based on enviroments in my boilerplate theme. That's why it's been removed from the web root on `install`. If you're not using such a pattern, remove the robots.txt attribute from the prepare part in the makefile. Learn more about [enviroment based robots.txt](https://learn.getgrav.org/17/cookbook/general-recipes#display-different-robots-txt-contents-for-differen).