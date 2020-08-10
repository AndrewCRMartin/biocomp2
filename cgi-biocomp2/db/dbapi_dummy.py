#!/usr/bin/python3
"""
...Comment header goes here...

This is the database API - it needs to access the MySQL database
"""

# Add the directory above to the module path to import the config file
import sys
sys.path.insert(0, "../")

import config  # Import configuration information (e.g. database connection)

def getAllEntries():
    """
    ...Function comment header goes here...

    This is a dummy function that returns a list of entries. The real version would probably
    return a list of dictionaries and would access the MySQL database
    """

    return(['AB000123', 'AB000321', 'AC001564'])
