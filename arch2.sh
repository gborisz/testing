hostnamectl set-hostname boriszpc
ip addr
systemctl enable dhcpcd
systemctl start dhcpcd
ip addr
ping www.google.com
nano /etc/sudoers
pacman -S xorg
pacman -S xterm xorg-xclock xorg-twm xorg-xinit xorg-server
pacman -S lightdm lightdm-gtk-greeter
pacman -S xfce4 xfce4-goodies
systemctl enable lightdm.service
pwd
cp /etc/X11/xinit/xinitrc ~/.xinitrc
nano .xinitrc
