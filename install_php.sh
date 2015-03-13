#!/bin/bash

#check runner
if [ $(id -u) != "0" ]; then
    echo "error: user must be an administrator"
    exit;
fi
