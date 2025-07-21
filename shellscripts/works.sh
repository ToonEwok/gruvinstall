#rmdir /home/sark/work/complete
#rmdir /home/sark/work/wip
#rmdir /home/sark/work/limbo
#rmdir /home/sark/work/maintenance
#rmdir /home/sark/work/tbm
ssh sark@192.168.0.41 'rm -rf /home/sark/work/*'
sftp sark@192.168.0.41<<EOF
put -R /home/bailey/Work/* /home/sark/work/
exit
EOF

