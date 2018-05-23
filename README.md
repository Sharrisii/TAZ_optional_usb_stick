# TAZ_optional_usb_stick
Repo containing the files that should be placed on the optional USB stick to accompany the TAZ livecd/usb (if used)
Note that you'll need to format the USB stick in a file system that can be read by gentoo (i.e. fat32, ext3/ext4, ReiserFS, ...)

The functions of the USB stick are the following:
* hide the /dev/cdrom, and /dev/dvd symlinks to sr0, as well as the /dev/disk folder
* create labels for parallel, serial and usb hard disks, as well as serial, parallel and usb opticals
* load a user-set DNS address
* load a user-set keymap
* use feh as a screensaver, displaying images in the /images: folder in a slideshow
* 
