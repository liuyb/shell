#!/bin/bash

#check runner
if [ $(id -u) != "0" ]; then
    echo "error: user must be an administrator"
    exit;
fi

wget http://dev.mysql.com/get/Downloads/MySQL-5.6/mysql-5.6.23.tar.gz
tar -zxvf mysql-5.6.23.tar.gz
cd mysql-5.6.23

exit 0
