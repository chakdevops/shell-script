#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "Error:: please run this script with root access!!!"
    exit 1 # you can give other than zero
else
    echo "Proceed with the installation as you are a root user"
fi # fi means reverse of if, indicating condition end

yum install mysql -y

if [ $? -ne 0 ]
then 
    echo "ERROR:Installing MySql failed"
    exit 1
else 
    echo "Installing MySql is successful"    
fi