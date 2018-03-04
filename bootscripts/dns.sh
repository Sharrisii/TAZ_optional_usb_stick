# this file modifies the resolv.conf file located in /etc/; if the usb stick is not inserted
# (and this file is hence unavailable, the dns in /etc/resolv.conf will be used instead.
# note that besides setting the DNS per machine in /etc/resolv.conf, you could also set it at your
# router configuration webpage (in case you use one). If such functionality is not present, you can
# change the firmware to an open-source router firmware (such as OpenWrt, ...)

sed -i 's/([0-9]{1,3}\.){3}[0-9]{1,3}/input_your_new_IP_here/g' /etc/resolv.conf
