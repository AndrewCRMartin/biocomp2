#!/usr/bin/python3
"""
...Comment header goes here...

This CGI script obtains all the entries from the BL layer and formats them for 
HTML display as a table
"""

# Add the bl sub-directory to the module path
# and the directory above to import the config file
import sys
sys.path.insert(0, "../bl/")
sys.path.insert(0, "../")

import cgi        # Import the CGI module

import blapi      # Import the Business Logic API
import htmlutils  # Import HTML utilities
import config     # Import configuration information (e.g. URLs)

form = cgi.FieldStorage()
accession = str(form.getvalue('ac'))

#result = blapi.search(someParam from form)

html    = htmlutils.header()
html += "<h1>Dummy search code</h1>\n"
html += "      <ul>\n"
html += "        <li>Result of search for '" + accession + "'</li>\n"
html += "      </ul>\n"
html += htmlutils.footer()

print(html)



