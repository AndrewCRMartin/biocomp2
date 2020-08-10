Biocomputing II / cgi-biocomp2
==============================

This directory contains a config file and the code for the three layers:

- Frontend (`cgi`)

- Business Logic (`bl`)

- Database access (`db`)

There would be a `cgi2` directory if there is an alternative front end.

Note that the sample code in the `cgi` directory imports the
`blapi.py` module from the `bl` directory and the `blapi.py` module
imports the `dbapi.py` module from the `db` directory.



The `config.py` file is a symbolic link to the configuration file you
want to use and is created by the install script. For example, if you
want to have configuration files for using on a home machine and a
Birkbeck machine, you could create a config file for each and make
`config.py` a symbolic link to the one you want (making sure `config.py`
is not committed to your github repository).

