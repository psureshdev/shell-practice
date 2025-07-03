#!/bin/bash/

userid=$(id -u)

if [ $userid -ne 0 ]
then 
    echo "error: pls run with root user"
    exit 1
else
   echo "installing with root user"
fi

dnf remove treee -y

if [ $? -eq 0 ]
then 
    echo "tree success"
else
   echo "tree failure"
   exit 1
fi