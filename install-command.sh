#!/bin/bash/

userid=$(id -u)

if [ $userid -nq 0 ]
then 
    echo "error: pls run with root user"
else
   echo "installing with root user"
fi

dnf install tree -y