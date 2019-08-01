html=/var/www/html/biocomp2
cgi=/var/www/cgi-bin/biocomp2

mkdir -p $html
mkdir -p $cgi

cp -R html/* $html
cp -R cgi-biocomp2/* $cgi

