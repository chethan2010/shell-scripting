#!bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%H-%M-%S)
SCRIPT_NAME=$(echo 0 | cut '.' -f1 )
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2....Failure"
        exit 1
    else
        echo "$2...Success"
    fi
}


if [ $USERID -ne 0]
then
    echo "please run script as super user"
    exit 1
else
    echo "You are a Super user"
fi

for $i in $@
do
    echo "Packages to install: $i"
    dnf list installed $i &>>$LOGFILE
fi


if [ $? -ne 0 ]
then 
    echo "$i is already installed ..... skipping"
else
    echo  "$i is not installed need to be installed"