#!/bin/sh

#Write a script which display only the login, UID, and Path of each entry
# of the /etc/passwd file

cat /etc/passwd | awk -F: '{print $1 "\t" $3 "\t" $6}'
