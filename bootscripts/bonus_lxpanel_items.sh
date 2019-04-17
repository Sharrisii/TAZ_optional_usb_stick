#!/bin/bash
# This is a list with lxpanel itsem that need to be added depending on what boot setup was launched.

# Add items when launching boot setup 5
if [ -f /usr/bin/gimp/ ]; 
then
copy file with info below to /usr/share/applications:
[Desktop Entry]
Type=Application
Icon=leafpad
Name=Scan-ocr
Comment=Scan a page (OCR) and load text into leafpad
Categories=Graphics;2DGraphics;RasterGraphics;GTK;
Exec= /mnt/*/additional_scripts/scan-ocr.sh
StartupNotify=true
Terminal=true
MimeType=inode/directory;
fi
