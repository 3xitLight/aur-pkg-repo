#!/bin/bash

echo
echo
echo "####################################"
echo "#        Running config.sh!		 #"
echo "####################################"
echo
echo

sleep 3

### systemctl
systemctl enable lightdm
systemctl enable --now ufw
systemctl enable --now apparmor
systemctl disable --now avahi-daemon

sleep 1

### org.mate.interface.gschema.xml
wget https://github.com/3xitLight/aur-pkg-repo/raw/master/pkgbuilds/3xitlight/3xitlight-desktop/org.mate.interface.gschema.xml
cp -f org.mate.interface.gschema.xml /usr/share/glib-2.0/schemas/org.mate.interface.gschema.xml
glib-compile-schemas /usr/share/glib-2.0/schemas/

sleep 1

###
wget https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling/hosts
wget https://github.com/3xitLight/aur-pkg-repo/raw/master/pkgbuilds/3xitlight/3xitlight-desktop/3xitlight.tar.gz
# wget https://github.com/3xitLight/aur-pkg-repo/raw/master/pkgbuilds/3xitlight/3xitlight-desktop/bashrc
wget https://github.com/3xitLight/aur-pkg-repo/raw/master/pkgbuilds/3xitlight/3xitlight-desktop/ssh_config
wget https://github.com/3xitLight/aur-pkg-repo/raw/master/pkgbuilds/3xitlight/3xitlight-desktop/sshd_config
wget https://github.com/3xitLight/aur-pkg-repo/raw/master/pkgbuilds/3xitlight/3xitlight-desktop/providers.conf
wget https://github.com/3xitLight/aur-pkg-repo/raw/master/pkgbuilds/3xitlight/3xitlight-desktop/lightdm.conf
wget https://github.com/3xitLight/aur-pkg-repo/raw/master/pkgbuilds/3xitlight/3xitlight-desktop/lightdm-gtk-greeter.conf
wget https://github.com/3xitLight/aur-pkg-repo/raw/master/pkgbuilds/3xitlight/3xitlight-desktop/users.conf
wget https://github.com/3xitLight/aur-pkg-repo/raw/master/pkgbuilds/3xitlight/3xitlight-desktop/ufw.sh
wget https://github.com/3xitLight/aur-pkg-repo/raw/master/pkgbuilds/3xitlight/3xitlight-desktop/etc_default_ufw

sleep 1

###
cp -f hosts /etc/hosts
cp -f lightdm.conf /etc/lightdm/lightdm.conf
cp -f lightdm-gtk-greeter.conf.conf /etc/lightdm/lightdm-gtk-greeter.conf
cp -f users.conf /etc/lightdm/users.conf
cp -f ssh_config /etc/ssh/sshd_config
cp -f sshd_config /etc/ssh/ssh_config
cp -f providers.conf /home/xnn/.config/Qtwebflix/providers.conf
cp -f ufw.sh /tmp/ufw.sh
cp -f etc_default_ufw /tmp/etc_default_ufw

sync

sleep 1

###
tar -xzf archiv.tar.gz -C /usr/share/backgrounds/
sync
sleep 1

###
./tmp/ufw.sh

###
chmod 755 -r /usr/share/backgrounds/

###
gsettings set org.mate.interface gtk-theme Abrus-dark
gsettings set org.mate.interface icon-theme DarK
gsettings set org.mate.interface use-custom-font true
gsettings set org.mate.interface enable-animations false
gsettings set org.mate.interface font-name Zekton\ 13
gsettings set org.mate.interface monospace-font-name Terminess\ 13
gsettings set org.mate.interface document-font-name Zekton\ 12
gsettings set org.mate.interface background /usr/share/backgrounds/3xitlight/firered-polygons.jpg


echo
echo
echo "####################################"
echo "#        DONE config.sh!		 #"
echo "####################################"
echo
echo

sleep 3










