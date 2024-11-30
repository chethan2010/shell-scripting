#!/bin/bash

set -e
USERID=$(id -U)

if [ $USERID -ne 0 ]
then
     echo "please run script as super user"
     exit 1
else
     echo "You are a Super user"
fi


dnf install smysql -y
dnf install git -y 