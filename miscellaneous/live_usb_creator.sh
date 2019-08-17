#!/bin/bash
# Use this script to make your TAZ live usb stick/memory card from an iso; 
# it is not intented for the optional_usb_stick as this can be simply copied unto a (formatted) usb stick/memory card
# See https://wiki.gentoo.org/wiki/LiveUSB/Guide
# Change the path of /dev/sdc to the path of your usb stick/memory card;
# make sure the path is correct, to prevent accidental formatting of other connected drives

dd if=/path/to/image.iso of=/dev/sdc bs=8192k
