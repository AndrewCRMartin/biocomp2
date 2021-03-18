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
fi

if [ ! -f cgi-biocomp2/config.py ]; then
    echo ""
    echo "You need to create a cgi-biocomp2/config.py file"
    echo "Tip: copy and edit the appropriate example file - "
    echo "     cd cgi-biocomp2"
    echo "     cp config_demo.py config.py"
    echo "     nedit config.py"
    echo "     cd .."
    echo ""
fi

if [ ! -f config.sh ] || [ ! -f cgi-biocomp2/config.py ]; then
    exit 0;
fi

. ./config.sh

#--------------------------------------------------------------------------
# You shouldn't need to touch anything below here for running the demo
mkdir -p $html
mkdir -p $cgi

# Create the symbolic links for the api files if they aren't there
if [ ! -f cgi-biocomp2/db/dbapi.py ]; then
    (cd cgi-biocomp2/db/; ln -sf dbapi_dummp.py dbapi.py)
fi
if [ ! -f cgi-biocomp2/bl/blapi.py ]; then
    (cd cgi-biocomp2/bl/; ln -sf blapi_dummp.py blapi.py)
fi

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
