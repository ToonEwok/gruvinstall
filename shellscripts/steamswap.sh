#/bin/bash -x
steamuser=$1
steamid=$2
regfile=~/.steam/registry.vdf
confile=~/.steam/steam/logs/connection_log.txt
curuser=$(grep 'Logged On' $confile | tail -1 | cut -c 46- | cut -d ']' -f 1)
mainuser='43705294'
altuser='1738766480'
echo start

if [ $steamuser = 'main' ]
then

	tgtuser=$mainuser
	tgtreg=~/Documents/shfiles/steam/registry.vdf.main
	username='darthcrowe'

elif [ $steamuser = 'alt' ]
then

	tgtuser=$altuser
	tgtreg=~/Documents/shfiles/steam/registry.vdf.alt
	username='ewokagain69420'
fi

# check to see if the current user is the target user

if [ $curuser != $tgtuser ]
then

	echo accounts will be swapped
	sed -i "s/\"AutoLoginUser\"\t\t[^ ]*/\"AutoLoginUser\"\t\t\"${username}\"/" $regfile
	pkill steam

	#sed -i "s/\"AutoLoginUser\"\t\t[^\"]*/\"AutoLoginUser\"\t\t\"$username\"/" "$regfile"
	
	#cat $tgtreg > $regfile
	sleep 5
	steam -silent> /dev/null 2>&1 &
	sleep 3
	steam steam://rungameid/$steamid
elif [ $curuser == $tgtuser ]
then

	echo accounts will NOT be swapped
	steam steam://rungameid/$steamid
fi


