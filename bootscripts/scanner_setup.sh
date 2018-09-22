#!/bin/bash
#See https://wiki.gentoo.org/wiki/SANE
#and https://help.ubuntu.com/community/SANE%20-%20Installing%20a%20scanner%20that%20isn%27t%20auto-detected
#and https://forums.gentoo.org/viewtopic-t-210616-start-0.html

# Check whether your scanner is supported by SANE by viewing http://www.sane-project.org/sane-supported-devices.html
# If the scanner is supported, this script will add the user taz and root to the scanner user group
usermod -aG scanner taz
usermod -aG scanner root

# If it's a usb scanner, also open up /etc/sane.d/example.conf and find the line with the word "usb" in it and then add 
# the vendor and the product number you got with the scanimage -L command. It will look similar like this: 0x01aa 0x0001
# Copy this example.conf to the usb stick folder /miscellaneous/ and have this script run the command below by outcommenting 
# the following line in this script:
# cp -f ../miscellaneous/example.conf /etc/sane.d/example.conf
# Remember: only do this if it's a usb scanner.

# If the scanner hasn't been detected (check with scanimage -L or sane-find-scanner), then open the file /etc/sane.d/dll.conf and 
# manually remove the hashtag before the words "example-backend" of your listed brand of scanner. 

# Then, copy the dll.conf to the usb stick folder /miscellaneous/ and have this script run the commands 
# below by outcommenting the following line in this script:
# cp -f ../miscellaneous/dll.conf /etc/sane.d/dll.conf
