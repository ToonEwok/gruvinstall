ssh sark@192.168.0.41 'rm -rf /home/sark/backup/wipbkp/* mv /home/sark/work/wip/* /home/sark/backup/wipbkp; rm -rf /home/sark/work/wip/*'
sftp sark@192.168.0.41<<EOF
put -R /home/bailey/Work/wip/* /home/sark/work/wip
exit
EOF
