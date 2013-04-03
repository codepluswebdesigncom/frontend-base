#!/bin/sh

mkdir css img js tmp

# Install bootstrap
wget -P tmp http://twitter.github.com/bootstrap/assets/bootstrap.zip
unzip -q -d tmp tmp/bootstrap.zip
mkdir css/bootstrap img/bootstrap js/bootstrap
mv tmp/bootstrap/css/* css/bootstrap/
mv tmp/bootstrap/img/* img/bootstrap/
mv tmp/bootstrap/js/* js/bootstrap/

# Install jquery
mkdir js/jquery
wget -P js/jquery http://code.jquery.com/jquery-latest.min.js

# Install less
mkdir js/less
wget -P js/less -O js/less/less.min.js https://raw.github.com/cloudhead/less.js/master/dist/less-1.3.3.min.js
