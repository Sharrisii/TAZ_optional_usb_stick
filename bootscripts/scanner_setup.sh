#!/bin/bash
#See https://wiki.gentoo.org/wiki/SANE
#and https://help.ubuntu.com/community/SANE%20-%20Installing%20a%20scanner%20that%20isn%27t%20auto-detected

# Check whether your scanner is supported by SANE by viewing http://www.sane-project.org/sane-supported-devices.html
# If the scanner is supported, this script will add the user taz and root to the scanner user group
usermod -aG scanner taz
usermod -aG scanner root

# If the scanner hasn't been detected (check with scanimage -L or sane-find-scanner , open the file /etc/sane.d/dll.conf and 
# manually remove the hashtag before the words "example-backend" of your listed brand of scanner. If it's a usb scanner, also 
# find the line with the word "usb" in it and add the vendor and the product number you got with the scanimage -L command. It 
# will look similar like this: 0x01aa 0x0001
