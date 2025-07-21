#!/bin/bash

cur=1
lim=30
while [ 1 ]
do
#	echo hi
	if (( $cur > $lim )); 
	then
#		echo 'aab'
		cur=1
	fi
	#frame=$(cat /home/bailey/.apps/shellscripts/animation/globe/$cur)
	#echo -ne "\r$frame"
	#echo -ne"\r$cur"
	cat /home/bailey/.apps/shellscripts/animation/globe/$cur > /home/bailey/globe
	sleep 0.1
	clear
	cur=$((cur + 1))
done
