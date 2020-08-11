#!/bin/bash
# ...Comment header goes here...
#
# Simple demo install script that copies everything to the HTML and CGI
# directories
#
#
# Specify the HTML and CGI script directories. At Birkbeck, after you have
# set up the web directories as instructed in the CGI practical, these
# will be:
#    html=${HOME}/WWW/biocomp2demo
#    cgi=${HOME}/WWW/cgi-bin/biocomp2demo
html=/var/www/html/biocomp2demo
cgi=/var/www/cgi-bin/biocomp2demo










#--------------------------------------------------------------------------
# You shouldn't need to touch anything below here for running the demo
mkdir -p $html
mkdir -p $cgi

# For the purpose of this demo
(cd cgi-biocomp2; ln -sf config_demo.py config.py)

# Create the index.html file
(cd html; ./index.py > index.html)

# Install HTML and ensure it is readable by everyone
cp -R html/* $html
chmod -R a+r $html/*

# Install CGI scripts and ensure they are readable and eecutable by everyone
cp -R cgi-biocomp2/* $cgi
chmod -R a+rx $cgi/*

# Report where you access this
echo "You can now access the web site at:"
echo "   http://BASEURL/biocomp2demo/"
echo "At Birkbeck, this will typically be:"
user=`whoami`
url="http://student.cryst.bbk.ac.uk/~${user}/biocomp2/"
echo "   $url"
