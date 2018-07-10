#!/usr/bin/python3
"""
...Comment header goes here...

This is the business logic API
"""

# Add the bl sub-directory to the module path (for testing this routine)
import sys
sys.path.insert(0, "../db/")

import dbapi   # Import the database api

def getAllEntries():
    """
    ...Function comment header goes here...

    This is a very simple function that just calls the database API to do the SQL to 
    obtain the full list of entries. It doesn't need to do anything else.
    """
    return(dbapi.getAllEntries())

