html=/var/www/html/biocomp2
cgi=/var/www/cgi-bin/biocomp2

sudo mkdir -p $html
sudo chown andrew:andrew $html
sudo mkdir -p $cgi
sudo chown andrew:andrew $cgi

cp -R html/* $html
cp -R cgi-biocomp2/* $cgi

