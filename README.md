# TAZ_optional_usb_stick
Repo containing the files that should be placed on the optional USB stick to accompany the TAZ livecd/usb (if used).
The optional USB stick is started by files placed on the TAZ repo (in the /files_included_in_TAZ_isos/ folder )
Note that you'll need to format the USB stick in a file system that can be read/written to by gentoo (fat32, ext3/ext4, ReiserFS, ...)

The functions of the USB stick are the following:
* hide the /dev/cdrom, and /dev/dvd symlinks to sr0, as well as the /dev/disk folder
* create labels for parallel, serial and usb hard disks, as well as serial, parallel and usb opticals
* load a user-set wallpaper color (!)
* load a user-set screen resolution (!)
* load a user-set keymap (!)
* set the local timezone for the lxpanel clock
* change some networking settings (!)
* deactivate vesa and activate a different video driver (when using the custom boot setup 7)
* load a customized openbox menu and openbox rc file (!), remove the menu button on lxpanel as this menubutton then becomes redundant (!)
* load gajim, git and claws-mail config settings
* load a customized conky system monitor panel, openbox keybinds list panel, currency and commodity rates & weather & news panel
* load configuration files for the printer (when using boot setup 2)
* load configuration files for the scanner (when using boot setup 5)
* load any of the standard boot setups from 2 to 6 -if chosen at bootup- (only with x86 version, not in amd64 version; with the latter these boot setups are on the iso instead)
* load a (customized) 7th boot setup (squashfs archive) -if chosen at bootup-
* remove regular searchplugins and add SSL-searchplugins for palemoon and set a different homepage
* add a special autoconfig.js and a special config settings cfg-file for palemoon
* add several extensions to palemoon
* import gnupg private and public keys (and/or subkeys)
* copy any user-selected plugins over to gajim
* copy any emails that came in via claws-mail to the usb stick
* copy over a file with useful links, as well as a few readme's from the USB stick to TAZ
* use feh as a screensaver, displaying images in the /images: folder in a slideshow
* have a space to store emails, images, spreadsheets, documents, portable games

(!)= this function is currently disabled, to enable simply remove the # in the code
