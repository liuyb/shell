#!/bin/bash

#check runner
if [ $(id -u) != "0" ]; then
    echo "error: user must be an administrator"
    exit;
fi

#install cmake
yum install gcc gcc-c++ ncurses-devel cmake

#get mysql
wget http://dev.mysql.com/get/Downloads/MySQL-5.6/mysql-5.6.23.tar.gz

tar -zxvf mysql-5.6.23.tar.gz
cd mysql-5.6.23
cmake . -DCMAKE_INSTALL_PREFIX=/usr/local/services/mysql -DSYSCONFDIR=/usr/local/services/mysql/etc -DMYSQL_DATADIR=/data/mysql -DMYSQL_UNIX_ADDR=/data/mysql/mysqld.sock -DWITH_INNOBASE_STORAGE_ENGINE=1 -DENABLED_LOCAL_INFILE=1 -DMYSQL_TCP_PORT=3306 -DEXTRA_CHARSETS=all -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci -DMYSQL_UNIX_ADDR=/data/mysql/mysql.sock -DWITH_DEBUG=0
make
make install

exit 0
