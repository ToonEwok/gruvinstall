#!/bin/sh
typ=$1
$(pkill steam)
#rm /home/bailey/.steam/debian-installation/userdata/43705294/config/localconfig.vdf
sleep 7


if [ $typ = "a" ]
then
	sed -i '/python3 er-patcher/c\						\"LaunchOptions\"		\"python3 er-patcher --ultrawide --disable-vignette --skip-intro -- %command%\"' /home/bailey/.steam/steam/userdata/43705294/config/localconfig.vdf
	

	echo 'seamless disabled'
elif [ $typ = "b" ]
then
	sed -i '/python3 er-patcher/c\						\"LaunchOptions\"		\"python3 er-patcher --ultrawide --disable-vignette --executable ersc_launcher.exe --skip-intro -- %command%\"' /home/bailey/.steam/steam/userdata/43705294/config/localconfig.vdf

	echo 'seamless enabled'
	 
fi

