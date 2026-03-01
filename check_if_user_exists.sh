#!/bin/bash

:<<info 
To check user name is exits or not
info

read -p "Enter the username to Check: " username

count=$(grep "$username" /etc/passwd | wc | awk '{print $1}')

if [ $count -eq 0 ];
then 
     echo "Username $username is not Exist"

else
     echo "Username $username is Exist"

fi     
