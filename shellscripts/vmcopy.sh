echo nbd starting
modprobe nbd max_part=8
sleep 5
echo nbd connecting
qemu-nbd --connect=/dev/nbd0 /ssd/vm/storage/win10.qcow2
sleep 5
echo mounting partition
mount /dev/nbd0p2 /ssd/vm/vmmnt
sleep 3
echo copying
cp -R /ssd/vm/vmmnt/Users/Epstein\ Who/Desktop/stlcopy/* /home/bailey/Projects/
chown -R bailey /home/bailey/Projects
echo copying complete...disconnecting nbd
umount /ssd/vm/vmmnt
qemu-nbd --disconnect /dev/nbd0
sleep 5
rmmod nbd
echo done :\)
