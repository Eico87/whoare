#!/bin/bash
if [ -z "$1" ]
then
	echo " "
	echo "WHO ARE "
	echo " "
	echo "This script takes in input a txt file" 
	echo "containing a list of ip adresses,"
	echo "it performs a whois operation on each ip"
	echo "and gives as output a brief summary"
	echo "whithout any noise. Enjoy."
	echo " "
elif [ -n "$1" ]
then
	for ip in $(cat $1); do
       		echo '------------------'
		echo IP:$ip;	
		echo '------------------'
		whois $ip| egrep -i "netname|orgname|organization|country|city|person|e-mail"
	done >whoare-result
fi	
