#!/bin/bash/

userid=$(id -u)

if [ $userid -ne 0 ]
then 
    echo "error: pls run with root user"
    exit 1
else
   echo "installing with root user"
fi

#tree
dnf list installed tree
if [ $? -ne 0 ]
then 
  echo "tree not installed"
dnf install tree -y
else
  echo "tree installed"
  exit 1
fi

if [ $? -eq 0 ]
then 
    echo "tree success"
else
   echo "tree failure"
   exit 1
fi