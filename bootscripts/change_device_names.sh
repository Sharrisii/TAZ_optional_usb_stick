#!/bin/bash

# Hide the /dev/cdrom, and /dev/dvd symlinks to sr0, as well as the unused and empty /dev/disk folder 
# (normally used by systemd, but that's not installed)
cp -f ../device_names_files/.hidden /dev/

# Copy notes.txt to /dev/
cp -f ../device_names_files/notes.txt /dev/

# Copy udev rules file that makes udev automatically make labels for hard disks
cp -f ../device_names_files/harddisk_labelling.rule /etc/udev/rules.d/
