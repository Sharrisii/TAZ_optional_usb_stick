#!/bin/bash
# This is a list with lxpanel itsem that need to be added depending on what boot setup was launched.

# Add items when launching boot setup 5
if [ -f /usr/bin/gimp/ ]; 
then cp -f ../desktop_files/Scan-ocr.desktop /usr/share/applications
done
