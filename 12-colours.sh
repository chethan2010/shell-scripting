#!/bin/bash
USERID=$(id -u)
TIMESTAMP=$(date +%H-%M-%S)
SCRIPT_NAME=$(echo 0 | cut '.' -f )
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[3m"
G="\e[]"

VALIDATE(){
    if [ $USERID -ne 0 ]
    then
        echo "Please Run script as Super User "
        exit 1
    else 
        echo "You are a Super User"
    fi
}

VALIDATE(){
    if [ $1 - ne 0]
    then
        echo  "$2 ...........Failure"
        exit 1
    else
        echo "$2 .............Success"
    fi

}

dnf install mysql -y
VALIDATE $? "INSTALLING MYSQL"

dnf install git -y
VALIDATE $? "INSTALLING git"
