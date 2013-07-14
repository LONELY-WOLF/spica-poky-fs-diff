#!/sbin/ash
echo "Booting kernel"
kexec -l $1/boot/zImage --append="console=tty0 root=/dev/mmcblk0p3 rw init=/sbin/init rootdelay=1"
kexec -e
