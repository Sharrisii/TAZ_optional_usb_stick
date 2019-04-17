#!/bin/bash
#See https://wiki.gentoo.org/wiki/SANE
#and https://help.ubuntu.com/community/SANE%20-%20Installing%20a%20scanner%20that%20isn%27t%20auto-detected
#and https://forums.gentoo.org/viewtopic-t-210616-start-0.html

# Check whether your scanner is supported by SANE by viewing http://www.sane-project.org/sane-supported-devices.html
# If the scanner is supported, this script will add the user taz and root to the scanner user group
# Since in TAZ, both taz and root are already part of the scanner group, this section is outcommented
# usermod -aG scanner taz
# usermod -aG scanner root

# Next, detect the scanner with the sane-find-scanner command, you should get something like this:
# "found USB scanner (vendor=0x01aa [brand], product=0x0001 [product], chip=GL848+) at libusb:001:002"

# Then, open up /etc/sane.d/your_scanner_brand.conf and then add the vendor and the product number you got 
# with the sane-find-scanner command. Add these numbers after the port name on which your scanner is attached; 
# i.e. if usb then type usb and then add the vendor and product number.
# The vendor and product number will look similar like this: 0x01aa 0x0001
# Copy your_scanner_brand.conf to the usb stick folder /miscellaneous/ and have this script run the command below by outcommenting 
# the following line in this script:
# cp -f /mnt/*/miscellaneous/your_scanner_brand.conf /etc/sane.d/your_scanner_brand.conf

# Next check the file /etc/sane.d/dll.conf: 
# manually remove the hashtag before the words "example-backend" of your listed brand of scanner (if not already the case).
# then (if you needed to uncomment your listed brand of scanner), copy the dll.conf to the usb stick folder /miscellaneous/ and 
# have this script run the commands below by outcommenting the following line in this script:
# cp -f /mnt/*/miscellaneous/dll.conf /etc/sane.d/dll.conf

# To do any actual scanning, use the scanimage -L command as TAZ does not have a front-end for scanning.

# ------------------------------------------------------------------------------------------------------------------------------
# The section below is for the ocr-scanning function
# When started, the script will asks the input file (full path), and will then show you the OCR text in leafpad.
#You can copy/paste the text then for further use.
#Input: most image file formats are supported, so use a file with whatever image extension (but which has been prepared with the gimp, in batch mode -part of the script below-).
#Output: specify a filename followed by .txt, .pdf, .hocr, or .xml
#Read https://github.com/tesseract-ocr/tesseract/wiki/ , https://www.gimp.org/tutorials/Basic_Batch/ , https://www.linuxjournal.com/article/9676 for more details.
#Pagesegmode (with -psm ) and configfile are not supported.
#Script:
gimp -i -b '(tesseract "image.jpg")' -b '(gimp-quit 0)'
tesseract command
