#!/bin/bash
echo "Please list all users to add:"
read noUsers

	for i in $noUsers 
	do 
		
		echo "generating password for $i"
		password=$i@123
		echo "adding usser $i"
		useradd -m $i -p $password

	done



