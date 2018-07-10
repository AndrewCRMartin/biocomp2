Birkbeck Biocomputing II Skeleton Code
======================================

This provides some skeleton code for demonstrating how the three-layer
model works for the Biocomputin II project.

Most importantly, *it provides the required way in which files are
laid out in the GitHib submission*.

The code is organized into three main directories:

- `createdb` This is where the code will live to parse the Genbank
  file and create the database

- `html` This is where the HTML files live. If there is an alternative
  web front end then this would be in an `html2` directory

- `cgi-biocomp2` This is where the CGI scripts and all the code for
  the different layers lives.

The `cgi-biocomp2` directory contains three sub-directories that
represent the three layers of code:

- `cgi-biocomp2/cgi` contains the CGI scripts. If there is an
  alternative web front end then this would be in an directory called
  `cgi-biocomp2/cgi2`

- `cgi-biocomp2/bl` contains the business layer code.

- `cgi-biocomp2/db` contains the database access layer code.

In the top directory is a demonstration script that will copy the
files to HTML and cgi-bin directories. Obviously the destination for
these will be different for you working on the server at Birkbeck.

