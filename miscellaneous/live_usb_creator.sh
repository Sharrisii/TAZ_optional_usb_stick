#!/bin/bash
# Use this script to make your TAZ live usb stick/memory card from an iso; 
# it is not intented for the optional_usb_stick as this can be simply copied unto a (formatted) usb stick/memory card
# See https://wiki.gentoo.org/wiki/LiveUSB/Guide
# Change the path of /dev/sdc to the path of your usb stick/memory card;
# Make sure the path is correct, to prevent accidental formatting of other connected drives

dd if=/path/to/image.iso of=/dev/sdc bs=8192k

# Uncomment the line below to make swap space on the usb stick (to increase your memory capacity; 
# especially useful if your machine lacks in this and you also don't have a regular hard drive in your machine)
# To change the amount of swapspace (1000mb in the command), simply change the number.
# The swapspace in activated at boot by another command at /bootscripts/other.sh 
#mkfileswap /mnt/sdb2\swapspace_for_TAZ.swap 1000
