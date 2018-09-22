#!/bin/bash
#See https://wiki.gentoo.org/wiki/SANE
#and https://help.ubuntu.com/community/SANE%20-%20Installing%20a%20scanner%20that%20isn%27t%20auto-detected


#Set use flag
# ?

# Check whether your scanner is supported by SANE by viewing http://www.sane-project.org/sane-supported-devices.html
# If the scanner is supported, open the file /etc/sane.d/dll.conf
# Remove the hashtag before the words "example-backend" of your listed brand of scanner


sane-find-scanner

#Add to user group
usermod -aG scanner <username>
