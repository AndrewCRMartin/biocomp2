#!/bin/bash
# ...Comment header goes here...
#
# Simple demo install script that copies everything to the HTML and CGI
# directories
#
#

if [ ! -f config.sh ]; then
    echo ""
    echo "You need to create a config.sh file"
    echo "Tip: create a symbolic link from the appropriate example file - "
    echo "     ln -s config_bbk.sh config.sh"
    echo ""
    exit 0;
fi

. ./config.sh

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

# Install CGI scripts and ensure they are readable and excutable by everyone
cp -R cgi-biocomp2/* $cgi
chmod -R a+rx $cgi/*

# Install an htaccess file if needed
if [ $htaccess == '1' ]; then
    cp htaccess $cgi/.htaccess
    cp htaccess $cgi/cgi/.htaccess
fi

# Report where you access this
echo "You can now access the web site at:"
echo "   http://BASEURL/biocomp2demo/"
echo "At Birkbeck, this will typically be:"
user=`whoami`
url="http://student.cryst.bbk.ac.uk/~${user}/biocomp2demo/"
echo "   $url"
