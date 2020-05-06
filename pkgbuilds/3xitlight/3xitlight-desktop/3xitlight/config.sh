#!/bin/bash

echo
echo
echo "####################################"
echo "#        Running config.sh!		 #"
echo "####################################"
echo
echo

3XDIR="/usr/share/3xitlight"


######################################################################################################
cp -f $3XDIR/org.mate.interface.gschema.xml /usr/share/glib-2.0/schemas/org.mate.interface.gschema.xml
cp -f $3XDIR/lightdm.conf /etc/lightdm/lightdm.conf
cp -f $3XDIR/lightdm-gtk-greeter.conf.conf /etc/lightdm/lightdm-gtk-greeter.conf
cp -f $3XDIR/users.conf /etc/lightdm/users.conf
cp -f $3XDIR/ssh_config /etc/ssh/sshd_config
cp -f $3XDIR/sshd_config /etc/ssh/ssh_config
cp -f $3XDIR/providers.conf /home/xnn/.config/Qtwebflix/providers.conf
cp -f $3XDIR/etc_default_ufw /tmp/etc_default_ufw
mkdir /usr/share/backgrounds/3xitlight
cp -r $3XDIR/Wallpaper/* /usr/share/backgrounds/3xitlight


#######################
chmod 644 $3XDIR/bashrc
chmod 644 $3XDIR/providers.conf
chown xnn:xnn $3XDIR/bashrc
chown xnn:xnn $3XDIR/providers.conf
cp -f $3XDIR/bashrc /home/xnn/.bashrc
cp -f $3XDIR/providers.conf /home/xnn/.config/Qtwebflix/providers.conf

######################
chmod +x $3XDIR/ufw.sh
$3XDIR/ufw.sh
glib-compile-schemas /usr/share/glib-2.0/schemas/

#####################################################
gsettings set org.mate.interface gtk-theme Abrus-dark
gsettings set org.mate.interface icon-theme DarK
gsettings set org.mate.interface use-custom-font true
gsettings set org.mate.interface enable-animations false
gsettings set org.mate.interface font-name Zekton\ 13
gsettings set org.mate.interface monospace-font-name Terminess\ 13
gsettings set org.mate.interface document-font-name Zekton\ 12
gsettings set org.mate.interface background /usr/share/backgrounds/3xitlight/firered-polygons.jpg

########################
systemctl enable lightdm
systemctl enable --now ufw
systemctl enable --now apparmor
systemctl disable --now avahi-daemon


echo
echo
echo "####################################"
echo "#        DONE config.sh!		 #"
echo "####################################"
echo
echo

sleep 3










