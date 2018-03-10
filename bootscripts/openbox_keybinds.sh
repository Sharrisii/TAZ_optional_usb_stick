
# this file gives the command to replace the menu.xml and rc.xml; if the usb stick is not inserted 
# (and these file is hence unavailable, the standard menu.xml and rc.xml in /etc/xdg/openbox/ will be used instead
# once the files have been replaced, a command has been added to restart openbox with the new config files
# see https://linux.die.net/man/1/openbox

cp -f ./openbox_configs/menu.xml /etc/xdg/openbox/menu.xml
cp -f ./openbox_configs/menu.xml /etc/xdg/openbox/rc.xml
openbox --reconfigure
