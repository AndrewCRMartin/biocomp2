Birkbeck Biocomputing II Skeleton Code
======================================

This provides some skeleton code for demonstrating how the three-layer
model works for the Biocomputing II project.

Most importantly, **it provides the required way in which files are
expected to be laid out in the GitHib submission**.

A good place to start would be to try this out. 

1. Edit the file `install.sh` to replace the values of `html` and `cgi`
with the locations where you need to install your HTML files and CGI
scripts.

2. Edit the file `cgi-biocomp2/config_demo.py` and change `cgiURL` to
point to the path used to access a CGI script in a URL (something like
`/cgi-bin/cgiwrap/ab123/` (where `ab123` is replaced by your username).

3. Run the install script by typing `./install.sh`

You should now be able to point your browser to the URL of the
location in which you stored the HTML.

-----------------------------------------------------------------------

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

The `install.sh` script in the top directory is a demonstration script that will copy the files to HTML and cgi-bin directories. See the instructions above for using these on the server at Birkbeck.

