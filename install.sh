#!/bin/bash

#目录设置
CUR_DIR=.
TEMP_DIR=.tmp
SERVICE_DIR=/usr/local/services
FASTDFS_INSTALL_DIR=${SERVICE_DIR}/fastdfs
NGINX_INSTALL_DIR=${SERVICE_DIR}/nginx

#检测是否root用户
if [ $(id -u) != "0" ]; then
    echo "错误: 必须用root身份执行脚本"
    exit;
fi

#获得当前脚本执行目录
if [ $(echo $0 | grep '^/') ]; then
    CUR_DIR=$(dirname $0)
else
    CUR_DIR=$(pwd)/$(dirname $0)
fi
