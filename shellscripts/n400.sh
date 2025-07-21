#!/bin/sh
val=$1
curval=$(cat /home/bailey/Documents/shfiles/n400/n400.txt)
if [ $val = "cur" ]
then
	echo "$curval/2000"
else
newval=$((val + curval))
	echo $newval > /home/bailey/Documents/n400.txt 

fi
