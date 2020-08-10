html=/var/www/html/biocomp2
cgi=/var/www/cgi-bin/biocomp2

mkdir -p $html
mkdir -p $cgi

# For the purpose of this demo
(cd cgi-biocomp2; ln -s config_demo.py config.py)

(cd html; ./index.py > index.html)

cp -R html/* $html
chmod -R a+r $html/*

cp -R cgi-biocomp2/* $cgi
chmod -R a+rx $cgi/*
