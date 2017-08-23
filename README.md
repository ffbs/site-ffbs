
Branches
========

This repo contains the following branches:

* master: Is used to build the ''stable'' Gluon.
* beta: These branches are used to build beta releases of Gluon.
  Beta Releases are used to test new configuration that are ment to go 
  stable.
  Using beta releases in productions has a low but still considerable
  risk of errors.
* experimental: These branches are used to build the experimental releases of
  Gluon. Experimental releases can contain any useful or not so useful
  configurations.
  Experimental Relases are likely to break and should only be used
  if you really know what you are doing.

Building Freifunk Braunschweig Gluon
====================================

Freifunk Braunschweig uses this repository to build it's images.
In the normal build invironment the build in handled by an external scripts
that takes care of using the gluon build system and passing all needed
values to the right commands. This script also handles building multiple
architectures, singing and documentation.

If you want to build Freifunk Braunschweig Gluon yourself you can still use the
[Gluon Instructions](http://gluon.readthedocs.io/en/v2017.1.x/user/getting_started.html#building-the-images).

After cloning the site repo you have to:
```
cp site/site.in site/site.conf
sed  -i -e "s/AUTOUPDATERBRANCH/experimental/g" site/site.conf
```

