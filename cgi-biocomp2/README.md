Biocomputing II / cgi-biocomp2
==============================

This directory contains the code for the three layers:

- Frontend (`cgi`)

- Business Logic (`bl`)

- Database access (`db`)

There would be a `cgi2` directory if there is an alternative front end.

Note that the sample code in the `cgi` directory imports the
`blapi.py` module from the `bl` directory and the `blapi.py` module
imports the `dbapi.py` module from the `db` directory.

