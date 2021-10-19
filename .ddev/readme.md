# ddevhostname

## Installation

To get up and running:

````
make install
ddev start
````

### What install does

* Download and extract the latest grav
* Remove unneccesary stuff from the download
* Move the downloaded grav to root directory, so its also your webroot
* Install Plugins and themes defined in ``user/.dependencies``
* Upgrade grav and its plugins and themes, just to be sure

## CLI commands for convinience:

| command | function |
|---|---|
| `make install` | install everything to run the project |
| `make update` | update grav and plugins to latest stable version |
| `make clear` | clear cache |

### [chassis](https://github.com/bitstarr/grav-theme-chassis) theme specific

| command | function |
|---|---|
| `make favicon` | bring favicons in place (for live enviroment) |
| `make themeinit` | install dependencies for theme builds |
| `make watch` | development mode |
| `make lint` | lint frontend code |
| `make build` | build frontend code for release |
| `make jsmin` | quick build of js for release |
| `make cssmin` | quick build of css for release |

You can remove these from the `Makefile` if you don't use the chassis themes or modify it to your liking.

### development specific

| command | function |
|---|---|
| `make user` | create a new user |
| `make theme` | create a new blank theme |
| `make plugin` | create a new blank plugin |

You can remove these from the `Makefile` if you don't need this functionality.