###########deck ip 192.168.0.209


#variables
console=$1
#functions

###begin

sftp deck@192.168.0.98<<EOF
get -p /home/deck/.config/Ryujinx/bis/user/save/0000000000000001/0/system /ssd/roms/switch/decksave/
exit
EOF

case $console in
  switch)
  pcpath=/home/bailey/.config/Ryujinx/bis/user/save/0000000000000001/0
  pcfile=$pcpath/system
  sdpath=/ssd/roms/switch/decksave
  sdfile=$sdpath/system
if [ $sdfile -nt $pcfile ]
then
	echo "steamdeck file better"
  cp $sdfile $pcpath
elif [ $pcfile -nt $sdfile ]
then
	echo "pc file better"
sftp deck@192.168.0.98<<EOF
put /home/bailey/.config/Ryujinx/bis/user/save/0000000000000001/0/system /home/deck/.config/Ryujinx/bis/user/save/0000000000000001/0/ 
EOF

fi;
  ;;
esac
