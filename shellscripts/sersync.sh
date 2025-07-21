sftp sark@192.168.0.41<<EOF
put -R /ssd/torrents/tvshows/* /hdd/plex/TV\ Shows
put -R /ssd/torrents/movies/* /hdd/plex/Movies
put -R /ssd/torrents/games/* /hdd/games
put -R /ssd/torrents/software/* /hdd/software
put -R /ssd/torrents/roms/switch/* /hdd/ROMs/switch/roms
exit
EOF
cd /ssd/torrents/tvshows
rm -r *
cd /ssd/torrents/movies
rm -r * 
cd /ssd/torrents/games
rm -r *
cd /ssd/torrents/software
rm -r *
cd /ssd/torrents/roms/switch
rm -rf *
