rm -rf ~/Documents/wipbkp
mv ~/Work/wip ~/Documents/wipbkp
rm -rf ~/Work/*
sftp sark@192.168.0.41<<EOF
get -R /home/sark/work/* /home/bailey/Work
exit
EOF
