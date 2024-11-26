#!bin/bash

USERID=$(id -u)

if [ $USERID -ne 0]
then
    echo "please run script as super user"
    exit 1
else
    echo "You are a Super user"
fi

echo "all packages:$@"


