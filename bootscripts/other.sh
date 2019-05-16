#!/bin/bash
# Place any other commands you still need in this file. This may include copying settings for gajim, linphone, claws-mail, ...
# Also present here are the setting of the timezone of the lxpanel clock

# Example code: setting of timezone for the lxpanel clock
# To see available timezones: ls /usr/share/zoneinfo
# See also: https://wiki.gentoo.org/wiki/Handbook:AMD64/Installation/Base#Timezone
echo "Europe/Brussels" > /etc/timezone
emerge --config sys-libs/timezone-data
# if you also want to change the time format, you'll need to specify it via LC_TIME
# see https://wiki.gentoo.org/wiki/Localization/Guide#Environment_variables_for_locales
# and https://forums.gentoo.org/viewtopic-t-977540-start-0.html

# Example code: dhcpcd
# Use this only if you need to set up your internet connection (ethernet modems generally don't need it, config of these are
# done via browser by typing in the ip, ie 192.168.1.1)
# see also: https://wiki.gentoo.org/wiki/Network_management_using_DHCPCD
# and https://wiki.gentoo.org/wiki/Dhcpcd and https://wiki.gentoo.org/wiki/Handbook:X86/Full/Networking
# cd /mnt/*/networking/
# cp -f dhcpcd.conf /etc/

# Example code: temporary addresses
# Use this only if you want to turn on ipv6 temporary addresses
# cd /mnt/*/networking/
# cp -f local.conf /etc/sysctl.d/
# /etc/init.d/net.eth* restart
# /etc/init.d/net.wlan* restart

# Example code: gajim
# First, start gajim and enter the configuration settings for your messenger account(s)
# Next, rename your profile text to default.txt and copy it from /.config/gajim/ to /mnt/*/profiles/gajim 
# The rest is handled by following code:
gajim -p default -c /mnt/*/profiles/gajim/
cp -f /mnt/*/plugins/gajim/* /home//taz/.local/share/gajim/plugins/
 
# Example code: claws-mail
# First, start claws-mail and enter the configuration settings for your (POP3 or IMAP) account
# Next, copy your configuration files from /.claws-mail to /mnt/*/emails/.clawsconfig/
# By configuration files I mean not just the user account data but also program data (important for instance to skip
# the account registration box that auto-launches the first time (= first run)
# The rest is handled by following code:
if [ -f /usr/bin/claws-mail ] then
claws-mail --alternate-config-dir /mnt/*/emails/.clawsconfig/
cp -f /Mail/inbox/*.eml /mnt/*/emails/inbox/
cp -f /Mail/draft/*.eml /mnt/*/emails/draft/
cp -f /Mail/sent/*.eml /mnt/*/emails/sent/
fi

# Example code: gnupg public, private (and/or subkeys) import
# See https://www.phildev.net/pgp/gpg_moving_keys.html
# and http://irtfweb.ifa.hawaii.edu/~lockhart/gpg/
# and https://www.gnupg.org/gph/en/manual/x56.html
# and https://futureboy.us/pgp.html
# Note that one other way to copy over the keys is to simply copy the entire /home/taz/.gnupg/ folder
cd  /mnt/*/e-mails/gnupg_keys/mykeys/
echo my_passphrase | gpg --import *.asc
trust 5
cd  /mnt/*/e-mails/gnupg_keys/otherskeys/
gpg --import *.asc
trust 3

# Example code: git and ghi profile setting
# For setting general identity:
# read https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup
# You no longer need to do git config --global user.name "John Doe" or git config --global user.email johndoe@example.com since already set in .gitconfig file. 
# However, do change this data to your actual e-mail and user name in the .gitconfig file.
# For github PGP: read how to use this at https://git-scm.com/book/en/v2/Git-Tools-Signing-Your-Work
# Also check whether a PGP key has been included to your github account (via web browser -> github.com -> your settings)
# For ghi token: read through https://github.com/stephencelis/ghi/wiki/FAQ
# You no longer need to do git config --global ghi.token 036a0402c51c9a3f7de405793d12cffe6ae354d5 since already set in .gitconfig file
# You do need to change the token in the .gitconfig file to the token you first need to make yourself via your github account.
# Make sure you always run ghi in sandbox mode (using sandbox sakura -e ghi), since it is a ruby gem !
cd /mnt/*/profiles/git
cp -f .gitconfig /home/taz

# Example code: swap video driver from vesa to your specific graphics card driver and add hardware 3D acceleration
# This is only useful if you want to play (portablegames4linux) games that require 3D acceleration or if you want to be able to
# run other additional software that requires 3D acceleration (i.e. Google Earth, ...) on a custom boot setup you will order from VCTLabs
# First, look up which video card is in your machine via lspci if you don't know this (see https://wiki.gentoo.org/wiki/Hardware_detection )
# see which video driver you need for your graphics card at https://packages.gentoo.org/categories/x11-drivers
# There is more info on what model graphics card is supported by which driver at
# https://wiki.gentoo.org/wiki/AMDGPU , https://wiki.gentoo.org/wiki/Radeon , https://wiki.gentoo.org/wiki/NVidia , https://wiki.gentoo.org/wiki/Intel and other articles
# If you need a video driver not yet part of TAZ (see /var/db/pkg/x11-drivers for available drivers present in TAZ) then ask VCTLabs to include that 
# video driver to the boot setup you'll order to accompany Vulkan, and any additional programs (i.e. Google Earth, ...) you need
# also read https://wiki.gentoo.org/wiki/Xorg/Hardware_3D_acceleration_guide
# Next, open the file 10-dri.conf in the folder video_files on your optional USB stick in geany and edit it
# Then, you may need to do some additional configs (including those in the code below) and the machine also needs to deactivate the vesa driver and activate your specific graphics card driver.
# Read following article for more info on the use flag updating: https://wiki.gentoo.org/wiki/Handbook:Parts/Working/USE#Adapting_the_entire_system_to_the_new_USE_flags
# For the activating and deactivating of drivers, this is done via modules, see https://wiki.gentoo.org/wiki/Kernel_Modules
# The optional usb stick needs to be inserted to the machine prior to boot so that during boot it can fetch the data with the modules (required graphics driver) from the usb stick
# Run the code below:
# cd /etc/conf.d/
# modules="insert_your_required_driver_here" >> modules.txt
# cd /etc/portage
# VIDEO_CARDS="insert_your_video_card_here" >> make.conf
# USE="amdgpu" emerge x11-libs/libdrm
# USE="intel" emerge x11-libs/libdrm
# USE="nouveau" emerge x11-libs/libdrm
# USE="radeon" emerge x11-libs/libdrm
# USE="intel" emerge x11-libs/libva
# USE="nouveau" emerge x11-libs/libva
# USE="nvidia" emerge x11-libs/libva
# USE="i965" emerge x11-libs/libva
# USE="glamor" emerge x11-drivers/xf86-video-ati
# emerge --update --deep --newuse @world
# cd /usr/src/linux
# make menuconfig
# make && make install && make modules_install
# cp -f /mnt/*/video_files/10-dri.conf /etc/X11/xorg.conf.d/
##Following line is only needed if you have a pci card and it doesn't work correctlyFollowing line is only needed if you have a pci card and it doesn't work correctly
##cp -f /mnt/*/video_files/10-pcimode.conf /etc/X11/xorg.conf.d/
# You can run the commands glxinfo and glxgears after doing all this to see how well it performs now
