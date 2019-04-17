#!/bin/bash
# When starting (via lxpanel menu), the script will asks the image input file (full path), the treshold low and high value (depends on your scanner) and will then show you the OCR text in leafpad.
# The exact value to use for the low / high treshold value can be found by trying out a scan treshold in the gimp first and seeing gives best result, values should be between 0 and 127 for low and between 127 and 255 for high)
# You can copy/paste the text then for further use.
# Input: most image file formats are supported, so use a file with whatever image extension (but which has been prepared with the gimp, in batch mode -part of the script below-).
# Output: specify a filename followed by .txt, .pdf, .hocr, or .xml
# Read https://github.com/tesseract-ocr/tesseract/wiki/ , https://www.gimp.org/tutorials/Basic_Batch/ , https://www.linuxjournal.com/article/9676 for more details.
# Pagesegmode (with -psm ) and configfile are not supported.
# Script:

#Ask the input filename to the user and update the value in /home/taz/.gimp-2.8/scripts/scan-ocr.scm
read -p "Please enter the input image file (full path) :" scan_ocr_input_image_filename
Then, in the /home/taz/.gimp-2.8/scripts/scan-ocr.scm script, alter the "filename filename" with
the input image path entered by user (is the second filename for
additional files ? If so, we can drop that.)
Use sed for the altering.

#Ask the treshold values to the user and update the value in /home/taz/.gimp-2.8/scripts/scan-ocr.scm
read -p "Please enter the low treshold value" scan_ocr_low_treshold_value
read -p "Please enter the high treshold value" scan_ocr_high_treshold_value
Then, in the scan-ocr.scm script, alter these with sed.
This all need to be added to /home/taz/.gimp-2.8/scripts/scan-ocr.scm

#Ask in what the language the scanned page is written and carry out the required actions
read -p "Please enter in what language the scanned page is written" scan_ocr_language_inputimage
gimp -i -b '(tesseract "$scan_ocr_input_image_filename" $scan_ocr_low_treshold_value $scan_ocr_high_treshold_value $language_inputimage)'
leafpad tesseract-ocr-output.txt
