#!/bin/bash

# Hide the /dev/cdrom, and /dev/dvd symlinks to sr0, as well as the unused and empty /dev/disk folder 
# (normally used by systemd, but that's not installed)
cp -f ../device_names_files/.hidden /dev/

# Copy notes.txt to /dev/
cp -f ../device_names_files/notes.txt /dev/

# Append udev rules to /lib/udev/rules.d/60-persistent-storage.rules to make udev automatically make labels
# for parallel, serial and usb hard drives, as well as parallel, serial and usb cd(r)(w), and dvd(r)(w) drives
echo"
KERNEL=="sd*", ENV{ID_BUS}=="ata", ENV{DEVTYPE}=="disk", ENV{ID_ATA_SATA}!="1", ENV{ID_SERIAL}=="?*", SYMLINK+="disk/by-id/PARALLEL_ATA-$env{ID_SERIAL}"
KERNEL=="sd*", ENV{ID_BUS}=="ata", ENV{DEVTYPE}=="partition", ENV{ID_ATA_SATA}!="1", ENV{ID_SERIAL}=="?*", SYMLINK+="disk/by-id/PARALLEL_ATA-$env{ID_SERIAL}-part%n"

KERNEL=="sd*", ENV{ID_BUS}=="ata", ENV{DEVTYPE}=="disk", ENV{ID_ATA_SATA}=="1", ENV{ID_SERIAL}=="?*", SYMLINK+="disk/by-id/SERIAL_ATA-$env{ID_SERIAL}"
KERNEL=="sd*", ENV{ID_BUS}=="ata", ENV{DEVTYPE}=="partition", ENV{ID_ATA_SATA}=="1", ENV{ID_SERIAL}=="?*", SYMLINK+="disk/by-id/SERIAL_ATA-$env{ID_SERIAL}-part%n"

KERNEL=="sd*", ENV{ID_BUS}=="usb", ENV{DEVTYPE}=="disk", ENV{ID_SERIAL}=="?*", SYMLINK+="disk/by-id/USB-$env{ID_SERIAL}"
KERNEL=="sd*", ENV{ID_BUS}=="usb", ENV{DEVTYPE}=="partition", ENV{ID_SERIAL}=="?*", SYMLINK+="disk/by-id/USB-$env{ID_SERIAL}-part%n"

KERNEL=="sr*", ENV{ID_BUS}=="ata", ENV{DEVTYPE}=="disk", ENV{ID_ATA_SATA}!="1", ENV{ID_SERIAL}=="?*", SYMLINK+="disk/by-id/PARALLEL_ATA-$env{ID_SERIAL}"
KERNEL=="sr*", ENV{ID_BUS}=="ata", ENV{DEVTYPE}=="disk", ENV{ID_ATA_SATA}=="1", ENV{ID_SERIAL}=="?*", SYMLINK+="disk/by-id/SERIAL_ATA-$env{ID_SERIAL}"

KERNEL=="sr*", ENV{ID_BUS}=="usb", ENV{DEVTYPE}=="disk", ENV{ID_SERIAL}=="?*", SYMLINK+="disk/by-id/USB-$env{ID_SERIAL}"
" >> /lib/udev/rules.d/60-persistent-storage.rules
