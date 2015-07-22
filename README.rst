owncloud
========

SaltStack formula to install the OwnCloud Application

Note : to remain self-contained and reusable, this formula does
not contain a state to deploy an Apache or Nginx web server,
nor a state to deply a MySQL or PostgreSQL Database.

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.


Available States

.. contents::
    :local:

``owncloud``
----------

Add the package repository for your distributon and install the `owncloud-server` package.

Supported distributions :

* ``Debian``
* ``Ubuntu``
* ``RedHat``
* ``Fedora``
* ``CentOS``


This package will install the Owncloud application in a path defined by the packager :

- `Debian` and derivatives : ``/var/www/owncloud``
- `RedHat` and derivatives : ``/usr/share/owncloud``

TODO
====

* Add a state to configure Owncloud ``config.php``
