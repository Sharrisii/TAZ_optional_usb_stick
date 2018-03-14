# This file is triggered by the screen_res_lookup_on_usb_drives.start file in /etc/local.d/ in the TAZ distro (livecd/liveusb).
# The basic screen resolution is first used from /etc/X11/xorg.conf.d/, after this, the command below is carried out
# which allow setting a different resolution
# see https://wiki.gentoo.org/wiki/Xrandr

sleep 2
xrandr --output LVDS --mode 1024x768
