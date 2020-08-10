Biocomputing II / cgi-biocomp2/bl
=================================

This directory contains the code for the business logic layer.

It imports the `dbapi.py` module from the `../db` directory.

The code is currently a dummy implementation (blapi_dummy.py) and
blapi.py is symbolic link to this. Develop the specification of your
BL API in the dummy code and return dummy values as necessary.

Once you have your dummy API completed, copy it to blapi_real.py and
change the symbolic link of blapi.py to point to the new version. You
can then start changing the functions in there to implement the real
code.

