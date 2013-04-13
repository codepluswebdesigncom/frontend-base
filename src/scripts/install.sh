#!/bin/sh

mkdir tmp

# Install initializer
wget -P tmp -O tmp/initializr.zip 'http://www.initializr.com/builder?boot-hero&jquerymin&h5bp-iecond&h5bp-chromeframe&h5bp-analytics&h5bp-htaccess&h5bp-scripts&h5bp-robots&modernizrrespond&boot-css&boot-scripts'
unzip -q -d tmp tmp/initializr.zip
mv tmp/initializr/* .
rm index.html css/bootstrap-responsive.css css/bootstrap.css css/main.css

# Install lesscss
wget -P js/vendor -O js/vendor/less.min.js https://raw.github.com/cloudhead/less.js/master/dist/less-1.3.3.min.js --no-check-certificate

# clean up
rm -rf tmp
