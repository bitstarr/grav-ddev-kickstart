# ddevhostname

## Installation

To get up and running:

````
make install
ddev start
````

### What it does

* Download and extract the latest grav
* Remove unneccesary stuff from the download
* Move the downloaded grav to root directory, so its also your webroot
* Install Plugins and themes defined in ``user/.dependencies``
* Upgrade grav and its plugins and themes, just to be sure
* Ask to add a new user