#!/bin/bash/

#validating root user
userid=$(id -u)

if [ $userid -eq 0 ]
then
    echo "running with root user"
else 
    echo "pls run with root user"
    exit 1
fi

#tree installing
dnf list installed tree