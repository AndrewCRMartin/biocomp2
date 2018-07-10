#!/usr/bin/python3
"""
...Comment header goes here...

This CGI script obtains all the entries from the BL layer and formats them for 
HTML display as a table
"""

# Add the bl sub-directory to the module path
import sys
sys.path.insert(0, "../bl")

import blapi      # Import the Business Logic API
import htmlutils  # Import HTML utilities

entries = blapi.getAllEntries()
html    = htmlutils.header()

html += "<h1>Demo list of all entries</h1>\n"
html += "      <ul>\n"

for entry in entries:
    html += "        <li>" + entry + "</li>\n"

html += "      </ul>\n"
html += htmlutils.footer()

print(html)



