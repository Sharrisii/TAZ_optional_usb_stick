
# this file gives the command to replace the menu.xml and rc.xml; if the usb stick is not inserted 
# (and these file is hence unavailable, the standard menu.xml and rc.xml in /etc/xdg/openbox/ will be used instead.

cp ./openbox_configs/menu.xml /etc/xdg/openbox/menu.xml
cp ./openbox_configs/menu.xml /etc/xdg/openbox/rc.xml
