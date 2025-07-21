echo nbd starting
modprobe nbd max_part=8
sleep 5
echo nbd connecting
qemu-nbd --connect=/dev/nbd0 /ssd/vm/storage/win10.qcow2
sleep 5
echo mounting partition
mount /dev/nbd0p2 /home/bailey/Windows
read -p "Press enter to unmount VM"
umount /home/bailey/Windows
qemu-nbd --disconnect /dev/nbd0
sleep 5
rmmod nbd
echo done :\)
