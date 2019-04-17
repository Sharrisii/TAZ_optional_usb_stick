#!/bin/bash
# When starting (via lxpanel menu), the script will asks the image input file (full path), the treshold low and high value (depends on your scanner) and will then show you the OCR text in leafpad.
# The exact value to use for the low / high treshold value can be found by trying out a scan treshold in the gimp first and seeing gives best result, values should be between 0 and 127 for low and between 127 and 255 for high)
# You can copy/paste the text then for further use.
# Input: most image file formats are supported, so use a file with whatever image extension (but which has been prepared with the gimp, in batch mode -part of the script below-).
# Output: specify a filename followed by .txt, .pdf, .hocr, or .xml
# Read https://github.com/tesseract-ocr/tesseract/wiki/ , https://www.gimp.org/tutorials/Basic_Batch/ , https://www.linuxjournal.com/article/9676 for more details.
# Pagesegmode (with -psm ) and configfile are not supported.
# Script:
if [ -f /usr/lib/gimp/ ]; 
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
gimp -i -b '(tesseract "image.jpg")' -b '(gimp-quit 0)'
tesseract command
leafpad tesseract-ocr-output.txt
done
