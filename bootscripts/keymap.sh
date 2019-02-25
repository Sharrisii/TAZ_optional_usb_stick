#!/bin/bash
# this file overrides either keymap selection (latest versions of TAZ) or the 10-keyboard.conf file located in /etc/X11/xorg.conf.d;
# present in older versions of TAZ, if the usb stick is not inserted; it will then override that file.
# see https://wiki.gentoo.org/wiki/Xorg/Guide#Configuring_the_keyboard
# and https://wiki.gentoo.org/wiki/Keyboard_layout_switching#Using_setxkbmap
# To see your current set keymap (in X), use the command "xkeyboard-config"

# the command below sets the belgian latin1 version of the azerty keyboard;
# see /usr/share/kbd/keymaps/i386/azerty
# setxkbmap -layout be-latin1
