#!/bin/bash

read -p "Enter the username: " username

function create_user() {

echo "===========Creation of $username Started==========="

read -p "Enter the password: " password

sudo useradd -m "$username"

echo "$username:$password" | sudo chpasswd

echo "===========Creation of $username Completed==========="
}


function del_user() {

echo "===========Deletion of $username started==========="

sudo userdel -r $username

echo "===========Deletion of $username Completed==========="

}

count=$(grep "^$username" /etc/passwd | wc -l)


function check_user_exist() {
if [ "$count" -eq 0 ]; then

	echo "===========User $username Does Not exist==========="

else 
	 echo "===========User $username exist==========="
         grep "^$username:" /etc/passwd

fi
}

#check_user_exist
del_user
