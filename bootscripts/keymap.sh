# this file overrides the 30-keyboard.conf file located in /etc/X11/xorg.conf.d; if the usb stick is not inserted 
# (and this file is hence unavailable, the keymap in /etc/X11/xorg.conf.d/30-keyboard.conf will be used instead.
# see https://wiki.gentoo.org/wiki/Xorg/Guide#Configuring_the_keyboard
# and https://wiki.gentoo.org/wiki/Keyboard_layout_switching#Using_setxkbmap

setxkbmap -layout be-latin1
