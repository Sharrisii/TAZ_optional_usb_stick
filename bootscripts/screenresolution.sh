# This file is triggered by the screen_res_lookup_on_usb_drives.start file in /etc/local.d/ in the TAZ distro (livecd/liveusb).
# Commands in the /bootscripts folder have priority over the basic screen resolution
# So, altering these will change your the settings loaded by the TAZ livecd/usb
# see https://wiki.gentoo.org/wiki/Xrandr

xrandr --output LVDS --mode 1024x768
