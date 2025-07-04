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

#nginx
dnf list installed nginx
if [ $? -ne 0 ]
then 
  echo "nginx not installed"
dnf install nginx -y
else
  echo "nginx installed"
  exit 1
fi

if [ $? -eq 0 ]
then 
    echo "nginx success"
else
   echo "nginx failure"
   exit 1
fi

#java
dnf list installed java
if [ $? -ne 0 ]
then 
  echo "java not installed"
dnf install java -y
else
  echo "java installed"
  exit 1
fi

if [ $? -eq 0 ]
then 
    echo "java success"
else
   echo "java failure"
   exit 1
fi