#/bin/bash

ip=$1
rice=$2

oldip=~/Documents/shfiles/rice/oldip
oldrice=~/Documents/shfiles/rice/oldrice

if [ -z "$ip" ]; then

	ip=`cat $oldip`
	rice=`cat $oldrice`

else

	echo $ip > $oldip
	echo $rice > $oldrice
fi

rpath=~/rice/$rice/

rm -rf $rpath/dotconfig/*

sftp ricefarmer@$ip<<EOF
get -R /home/ricefarmer/rice/ $rpath
EOF


cd $rpath/rice

mv * ../

cd $rpath

rm -rf rice

