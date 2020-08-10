Biocomputing II / cgi-biocomp2/db
=================================

This directory contains the code for the database access layer.

The code is currently a dummy implementation (dbapi_dummy.py) and
dbapi.py is symbolic link to this. Develop the specification of your
DB API in the dummy code and return dummy values as necessary.

Once you have your dummy API completed, copy it to dbapi_real.pl and
change the symbolic link of dbapi.py to point to the new version. You
can then start changing the functions in there to implement the real
code.

Note that dbapi_dummy.py should not connect to the database - it just
returns random data in the correct format. (Consequently, search
parameters, etc., won't make any difference to what is returned).
