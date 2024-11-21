#!/bin/bash
#!/bin/bash

USERID=$(id -u)
VALIDATE(){
    if [ $1 -ne 0]
    then
        echo "$2....Failure"
        exit 1
    else
        echo "$2...Success"
    fi
}
if [ $USERID  -ne 0 ]
then 
 echo "Please run your script with root access"
 exit 1 #Manually exits if error comes
 else
 echo "you are a super user"
 fi 

sudo dnf install mysql -y

then
    echo "Installation of mysql failed...."
    exit 1
else 
    echo "Installation of mysql is success"

fi

dnf install mysql -y
VALIDATE $? "INSTALLING MYSQL"
 
dnf install git -y
VALIDATE $? "INSTALLING git"


