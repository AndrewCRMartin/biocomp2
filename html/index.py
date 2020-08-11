#!/usr/bin/env python3
"""
...Comment header goes here...

Simple script to generate the index.html file so that we can pick up
configuration information from the config file.
"""

# Add the CGI directory which is where the config file lives
import sys
sys.path.insert(0, "../cgi-biocomp2")
import config

print(
"""<!DOCTYPE html>

<!-- A header comment goes here
-->

<html>
  <head>
    <title>Biocomputing II - framework</title>
    <link rel='stylesheet' type='text/css' href='css/biocomp2.css' />
  </head>
  
  <body>
    <div class='content'>
      <h1>Biocomputing II - framework</h1>
      <p>A simple demo of how the Biocomputing II project should work and
        be submitted. It shows how the API between the layers is organized.</p>
      
      <p>Most importantly, it shows how you how you are <b>strongly
        recommended</b> to organize your code in GitHub for
        marking. If you deviate from this, you must have a very good
        reason!
      </p>
      
      <p>
        <a href='""" + config.listallurl + """'>List all entries</a>
      </p>
      
      <form action='""" + config.searchurl + """' method='get'>
        <p>Search by:</p>
        
        <table>
          <tr>
            <td>genbank accession</td>
            <td><input type='text' name='ac'/> (only this works in the demo)</td>
          </tr>
          <tr>
            <td>gene identifier</td>
            <td><input type='text' name='gi'/></td>
          </tr>
          <tr>
            <td>protein product</td>
            <td><input type='text' name='protein'/></td>
          </tr>
          <tr>
            <td>chromosomal location</td>
            <td><input type='text' name='loc'/></td>
          </tr>
        </table>

        <p><input type='Submit' value='Search' /></p>

      </form>
    </div> <!-- content -->
  </body>
</html>
""")
