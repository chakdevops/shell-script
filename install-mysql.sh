#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "Error:: please run this script with root access!!!"
else
    echo "Proceed with the installation as you are a root user"
fi # fi means reverse of if, indicating condition end

yum install mysql -y
