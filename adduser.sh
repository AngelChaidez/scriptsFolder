#!/usr/bin/sudo bash
# Lets read in the names of all users to be added
# to our linux file system

echo "Please list all users to add:"
# Read in all users 
read noUsers
# I will use a for loop to enter all users
# adding a temp password of the username
# with @123 added as their initial password
	for i in $noUsers 
	do 
		
		echo "generating password for $i"
		password=$i@123
		echo "adding usser $i"
		useradd -m $i -p $password

	done


