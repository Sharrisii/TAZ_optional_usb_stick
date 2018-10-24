#!/bin/bash
# Place any other commands you still need in this file. This may include copying settings for gajim, linphone, claws-mail, ...
# Also present here are the setting of the timezone of the lxpanel clock

# Example code: gajim
# First, start gajim and enter the configuration settings for your messenger account(s)
# Next, rename your profile text to default.txt and copy it from /.config/gajim/ to /mnt/*/profiles/gajim 
# The rest is handled by following code:
gajim -p default -c /mnt/*/profiles/gajim/

# Example code: linphone
# First, start linphone and enter the configuration settings for your messenger account(s)
# Next, copy your profile file from /.linphonerc to /mnt/*/profiles/linphone 
# See also http://write.flossmanuals.net/linphone/configuring/
# The rest is handled by following code:
cp /mnt/*/profiles/linphone/* /.linphonerc/ 
 
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

# Example code: gnupg public, private (and/or subkeys) import
# See https://www.phildev.net/pgp/gpg_moving_keys.html
# and http://irtfweb.ifa.hawaii.edu/~lockhart/gpg/
# and https://www.gnupg.org/gph/en/manual/x56.html
# and https://futureboy.us/pgp.html
cd  ../e-mails/gnupg_keys/mykeys/
gpg --import *.asc
trust 5
cd  ../e-mails/gnupg_keys/otherskeys/
gpg --import *.asc
trust 3

# Example code: dhcpcd
# Use this only if you need to set up your internet connection (ethernet modems generally don't need it, config of these are
# done via browser by typing in the ip, ie 192.168.1.1
# see also: https://wiki.gentoo.org/wiki/Network_management_using_DHCPCD
# and https://wiki.gentoo.org/wiki/Dhcpcd and https://wiki.gentoo.org/wiki/Handbook:X86/Full/Networking
# cd ../networking/
# cp -f dhcpcd.conf /etc/

# Example code: setting of timezone for the lxpanel clock
# To see avilable timezones: ls /usr/share/zoneinfo
# See also: https://wiki.gentoo.org/wiki/Handbook:AMD64/Installation/Base#Timezone
echo "Europe/Brussels" > /etc/timezone
emerge --config sys-libs/timezone-data
