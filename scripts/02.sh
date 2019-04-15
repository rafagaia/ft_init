#!/bin/sh

#Write a script which delete an ACTIVE user on the VM
if [ ! $1 ]
then
	echo "Invalid Username"
elif [ $1 == "root" ]
then
	echo "Don't delete ROOT, yo"
elif [ $(whoami) != "root" ]
then
	echo "Must be ROOT to delete a user"
else
	deluser --force --remove-home $1
fi
