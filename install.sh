#!/bin/bash

#folder
CUR_DIR=.
TEMP_DIR=.tmp
SERVICE_DIR=/usr/local/services
MYSQL_INSTALL_DIR=${SERVICE_DIR}/mysql
NGINX_INSTALL_DIR=${SERVICE_DIR}/nginx
PHP_INSTALL_DIR=${SERVICE_DIR}/php

#check runner
if [ $(id -u) != "0" ]; then
    echo "error: user must be an administrator"
    exit;
fi

#get current folder
if [ $(echo $0 | grep '^/') ]; then
    CUR_DIR=$(dirname $0)
else
    CUR_DIR=$(pwd)/$(dirname $0)
fi

#使用帮助
show_help(){
cat <<EOF
Options are:
install.
clean.
EOF
exit;
}

#检查参数
[ $# -gt 0 ] || show_help;

#Main
case "$1" in
clean)
	clean_data;
;;
install)
	create_dir;
;;
*)
	show_help;
;;
esac

exit 0
