rm -rf ~/Documents/wipbkp/*
mv ~/Work/wip/* ~/Documents/wipbkp
rm -rf ~/Work/wip/*
sftp sark@192.168.0.41<<EOF
get -R /home/sark/work/wip/* /home/bailey/Work/wip/
exit
EOF
