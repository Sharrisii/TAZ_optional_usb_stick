#!/bin/bash

# Hide the /dev/cdrom, and /dev/dvd symlinks to sr0, as well as the unused and empty /dev/disk folder 
# (normally used by systemd, but that's not installed)
cp -f ../device_names_files/.hidden /dev/

# Copy notes.txt to /dev/
cp -f ../device_names_files/notes.txt /dev/

# Append udev rules to /lib/udev/rules.d/60-persistent-storage.rules tho make udev automatically make labels for hard disks
echo"
KERNEL=="sd*", ENV{ID_BUS}=="ata", ENV{DEVTYPE}=="disk",
ENV{ID_SERIAL}=="?*", SYMLINK+="disk/by-id/SERIAL_ATA-$env{ID_SERIAL}"
KERNEL=="sd*", ENV{ID_BUS}=="ata", ENV{DEVTYPE}=="partition",
ENV{ID_SERIAL}=="?*",
SYMLINK+="disk/by-id/SERIAL_ATA-$env{ID_SERIAL}-part%n"

" >> /lib/udev/rules.d/60-persistent-storage.rules
