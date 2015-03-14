#!/bin/bash

#check runner
if [ $(id -u) != "0" ]; then
    echo "error: user must be an administrator"
    exit;
fi

#install dependence
yum install pcre-devel

#get nginx
wget http://nginx.org/download/nginx-1.7.10.tar.gz

tar -zxvf nginx-1.7.10.tar.gz
cd nginx-1.7.10
./configure --prefix=/usr/local/services/nginx --with-http_ssl_module --with-http_gzip_static_module
make
make install

exit 0

