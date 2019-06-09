#!/bin/bash
if [ -z "$1" ]
then
cat<<eof
	 __     __   __  __   ______       ______   ______   ______
	/\ \  _ \ \ /\ \_\ \ /\  __ \     /\  __ \ /\  == \ /\  ___\
	\ \ \/ ".\ \\ \  __ \\ \ \/\ \    \ \  __ \\ \  __< \ \  __\
	 \ \__/".~\_\\ \_\ \_\\ \_____\    \ \_\ \_\\ \_\ \_\\ \_____\
	  \/_/   \/_/ \/_/\/_/ \/_____/     \/_/\/_/ \/_/ /_/ \/_____/
                                                               

				More Than whois
	

	This script takes in input a txt file containing a list of ip adresses,
	it performs a whois operation on each ip and gives as output a brief 
			summary whithout any noise. 
				    Enjoy!
				    
	Author:Eico
eof

elif [ -n "$1" ]
then
	for ip in $(cat $1); do
       		echo '------------------'
		echo IP:$ip;	
		echo '------------------'
		whois $ip| egrep -i "netname|orgname|organization|country|city|person|e-mail"
	done >whoare-result
fi	


