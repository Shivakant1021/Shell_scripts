#!/bin/bash
#For checking status of websites 



read -p "which website you want to check:" site

ping -c 1 $site

#sleep 1s 

if [[ $? -eq 0 ]]
then
	echo "Successfully conntected to site"
else
	echo "unable to connect $site"
fi




