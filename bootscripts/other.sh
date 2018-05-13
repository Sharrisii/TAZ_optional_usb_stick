#!/bin/bash
# Place any other commands you still need in this file. This may include copying settings for gajim, linphone, claws-mail, ...

# Example code: claws-mail
# First, start claws-mail and enter the configuration settings for your (POP3 or IMAP) account
# Next, copy your configuration files from /home/username/.claws-mail to /mnt/*/emails/.clawsconfig/
# The rest is handled by following code:
if [ -f /usr/bin/claws-mail ] then
claws-mail --alternate-config-dir /mnt/*/emails/.clawsconfig/
cp -R /home/*/Mail/Inbox/*.eml /mnt/*/emails/Inbox/
cp -R /home/*/Mail/Outbox/*.eml /mnt/*/emails/Outbox/
cp -R /home/*/Mail/Sent/*.eml /mnt/*/emails/Sent/
