#!/bin/bash
# this file gives the command to replace the menu.xml and rc.xml; if the usb stick is not inserted 
# (and these file is hence unavailable, the standard menu.xml and rc.xml in /etc/xdg/openbox/ will be used instead
# once the files have been replaced, a command has been added to restart openbox with the new config files
# see https://linux.die.net/man/1/openbox

# This section is outcommented since the same xml files are already on the taz iso.
# Remove comments if you want to activate this again 
# (i.e. if you want to change these xml's (in the openbox_configs folder) and have them overwrite the xml files on the iso)
# cp -f ../openbox_configs/menu.xml /etc/xdg/openbox/menu.xml
# cp -f ../openbox_configs/rc.xml /etc/xdg/openbox/rc.xml
# cp -f ../openbox_configs/lxde-rc.xml /home/taz/.config/openbox/lxde-rc.xml
# openbox --reconfigure

# Now that the keybinds and right-click menu are integrated, there is no need for a menu button on the lxpanel
# We're not disabling it entirely though since the taskbar is still useful; rather we're just removing the menu button
# See https://wiki.lxde.org/en/LXPanel
# sed -i -e "27,51d" panel /home/taz/.config/lxpanel/LXDE/panels/
# openbox --reconfigure
