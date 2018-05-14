#!/bin/bash
# Place any other commands you still need in this file. This may include copying settings for gajim, linphone, claws-mail, ...

# Example code: gajim
# First, start gajim and enter the configuration settings for your messenger account(s)
# Next, copy your profile file (default) from ? to /mnt/*/profiles/gajim
# The rest is handled by following code:
gajim -p default -c /mnt/*/profiles/gajim

# Example code: linphone
# First, start linphone and enter the configuration settings for your messenger account(s)
# Next, copy your profile file from /home/username/.linphonerc to /mnt/*/profiles/linphone
# The rest is handled by following code:
cp /mnt/*/profiles/linphone/* /home/*/.linphonerc/

# Example code: claws-mail
# First, start claws-mail and enter the configuration settings for your (POP3 or IMAP) account
# Next, copy your configuration files from /home/username/.claws-mail to /mnt/*/emails/.clawsconfig/
# The rest is handled by following code:
if [ -f /usr/bin/claws-mail ] then
claws-mail --alternate-config-dir /mnt/*/emails/.clawsconfig/
cp -f /home/*/Mail/Inbox/*.eml /mnt/*/emails/Inbox/
cp -f /home/*/Mail/Outbox/*.eml /mnt/*/emails/Outbox/
cp -f /home/*/Mail/Sent/*.eml /mnt/*/emails/Sent/
