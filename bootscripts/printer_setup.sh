#!/bin/bash
# First, find out the computer port your printer sits on, and other info. Do so by the command:
# echo "$(dmesg | grep -i Insert_Printer_Model_or_Manufacturer)"
# Next, set up cups by pointing the browser to http://localhost:631 and following the instructions.
# The cups web browser interface will then modify the etc/cups/cupsd.conf file. Place it in /printer_files/
# Then, get your .ppd file for your printer from https://www.openprinting.org/printers and place it in /printer_files/
# Once you generated both files, you won't need to go over these steps any more (the script will do the rest from then on).
# This script will then copy the ppd file to the system, and restart cups, and start the cups deamon
# see https://wiki.gentoo.org/wiki/Printing and https://forums.gentoo.org/viewtopic-t-22291-start-0.html

cp -f /mnt/*/printer_files/cupsd.conf /etc/cups/cupsd.conf
cp -f /mnt/*/printer_files/*.ppd /usr/share/cups/model/
/etc/init.d/cupsd restart
systemctl start cups.service
