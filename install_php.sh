#!/bin/bash

#check runner
if [ $(id -u) != "0" ]; then
    echo "error: user must be an administrator"
    exit;
fi

#wget php
wget http://am1.php.net/distributions/php-5.6.6.tar.gz
tar -zxvf php-5.6.6.tar.gz
cd php-5.6.6
./configure --prefix=/usr/local/services/php --enable-fpm --with-config-file-path=/usr/local/services/php/etc --enable-mbstring --disable-mbregex --enable-sockets --disable-pdo --disable-phar --with-sqlite3 --with-mcrypt --with-gd --with-jpeg-dir= --with-freetype-dir  --with-curl --enable-soap --with-zlib --with-libxml-dir --enable-zip --with-xmlrpc --enable-pcntl --with-mysql=/usr/local/services/mysql --enable-mysqlnd --with-mysqli=mysqlnd --with-openssl
make
make install

exit 0
