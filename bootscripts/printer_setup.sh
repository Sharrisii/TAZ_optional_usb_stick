#!/bin/bash
# First, find out the computer port your printer sits on, and other info. Do so by one of these commands:
# dmesg | grep -i print
# lsusb
# lpinfo -l -v
# Next, set up cups by pointing the browser to http://localhost:631 and following the instructions
# cups will then generate a ? file. Place it in /printer_files/
# Then, get your .ppd file for your printer from https://www.openprinting.org/printers and place it in /printer_files/
# This script will then copy the ppd file to the system, and restart cups, and start the cups deamon
# see https://wiki.gentoo.org/wiki/Printing and https://forums.gentoo.org/viewtopic-t-22291-start-0.html

cp ../printer_files/?.? ?
cp ../printer_files/*.ppd /usr/share/cups/model/
/etc/init.d/cupsd restart
systemctl start cups.service 
