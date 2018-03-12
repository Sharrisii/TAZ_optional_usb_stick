#!/bin/bash
# This file tells the system to copy the ppd file, and restart cups
# see https://wiki.gentoo.org/wiki/Printing and https://forums.gentoo.org/viewtopic-t-22291-start-0.html

cp ../printer_files/*.ppd /usr/share/cups/model/
/etc/init.d/cupsd restart
