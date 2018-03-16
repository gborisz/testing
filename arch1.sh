mkfs.EXT4 /dev/sda7
mount /dev/sda7 /mnt
mkdir /mnt/boot /mnt/var /mnt/home
mount /dev/sda7 /mnt/boot
pacstrap /mnt base base-devel
pacman -Syu
pacstrap /mnt grub-bios
genfstab -p /mnt >> /mnt/etc/fstab
arch-chroot /mnt
bash
hwclock --systohc --utc
mkinitcpio -p linux
passwd root
useradd -m -g users -G wheel -s /bin/bash gborisz
passwd gborisz
pacman -S grub os-prober
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
exit
exit
