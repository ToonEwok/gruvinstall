echo nbd starting
modprobe nbd max_part=8
sleep 5
echo nbd connecting
qemu-nbd --connect=/dev/nbd0 /ssd/vm/lptopcln/workdump.qcow
sleep 5
echo mounting partition
mount /dev/nbd0p6 /home/bailey/Windows
read -p "Press enter to unmount VM"
umount /home/bailey/Windows
qemu-nbd --disconnect /dev/nbd0
sleep 5
rmmod nbd
echo done :\)
